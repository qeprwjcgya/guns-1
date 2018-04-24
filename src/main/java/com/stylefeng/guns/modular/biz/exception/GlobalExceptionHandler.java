/*
 * Copyright (c) 2017.  younatianxia.com Inc. All rights reserved.
 */

package com.stylefeng.guns.modular.biz.exception;

import com.google.common.base.Throwables;
import com.google.common.collect.Maps;
import com.stylefeng.guns.modular.biz.util.Dates;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * 统一异常处理
 *
 * @author <a href="wubin3347@gmail.com">wubin</a>
 * @version 1.0.0, 2018-03-02 11:56
 */
@RestControllerAdvice
@Component
public class GlobalExceptionHandler {
    /**
     * feign调用异常栈，一般在 DynamicHeaderRegistry#getAllHeaders 中设置
     */
    public static final ThreadLocal<String> FEIGN_INVOKE_STACK = new ThreadLocal<>();
    /**
     * 自定义处理类型
     */
    public static final String IS_CUSTOM = "custom";
    /**
     * 是否忽略 isSimpleResult ，强制抛出异常，默认不忽略
     */
    private static final ThreadLocal<Boolean> CURRENT_IGNORE_SIMPLE_RESULT = new ThreadLocal<>();
    private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);
    /**
     * 当前环境是否为feignApi端，一般在 ErrorDecoder 实现类中修改为true
     */
    //  public static boolean isFeignApi = false;

    @Value("#{'${spring.profiles.active}'.contains('prod')}")
    private boolean isProduction;
    @Value("${spring.application.name}")
    private String appName;
    /**
     * 是否直接将response的状态码改为200，用于一些状态区分不细的管理端页面
     */
    @Value("${oa.isSimpleResult:false}")
    private boolean isSimpleResult;

    /**
     * 是否忽略 isSimpleResult ，强制抛出异常，true = 强制抛出异常
     */
    public static void ignoreSimpleResult(boolean ignore) {
        CURRENT_IGNORE_SIMPLE_RESULT.set(ignore);
    }

    @ExceptionHandler({BusinessException.class})
    @Order(0)
    public ResponseEntity<Map<String, Object>> businessExceptionHandler(Exception e, HttpServletResponse response,
                                                                        HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, true);
        map.put(IS_CUSTOM, true);
        map.put("errorCode", ((BusinessException) e).getErrorCode());
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }

    /**
     * Custom exception handler response entity.
     *
     * @param e        the e
     * @param response the response
     * @param request  the request
     * @return the response entity
     */
    //    @ExceptionHandler({NullPointerException.class, IllegalArgumentException.class})
    //    @Order(0)
    public ResponseEntity<Map<String, Object>> customExceptionHandler(Exception e, HttpServletResponse response,
                                                                      HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, true);
        map.put(IS_CUSTOM, true);
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }

    /**
     * Method argument type mismatch exception handler response entity.
     *
     * @param e        the e
     * @param response the response
     * @param request  the request
     * @return the response entity
     */
    //    @ExceptionHandler({MethodArgumentTypeMismatchException.class, MissingServletRequestParameterException.class})
    //    @Order(1)
    public ResponseEntity<Map<String, Object>> methodArgumentTypeMismatchExceptionHandler(Exception e,
                                                                                          HttpServletResponse response,
                                                                                          HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, false);
        map.put("message", "请求参数类型错误");
        map.put(IS_CUSTOM, true);
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }

    /**
     * Spring mvc exception handler response entity.
     *
     * @param e        the e
     * @param response the response
     * @param request  the request
     * @return the response entity
     */
    //    @ExceptionHandler({HttpRequestMethodNotSupportedException.class})
    //    @Order(2)
    public ResponseEntity<Map<String, Object>> springMVCExceptionHandler(Exception e, HttpServletResponse response,
                                                                         HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, false);
        map.put("message", "请求类型错误");
        map.put(IS_CUSTOM, true);
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }

    /**
     * Http media type not supported exception handler response entity.
     *
     * @param e        the e
     * @param response the response
     * @param request  the request
     * @return the response entity
     */
    //    @ExceptionHandler({HttpMediaTypeNotSupportedException.class})
    //    @Order(3)
    public ResponseEntity<Map<String, Object>> httpMediaTypeNotSupportedExceptionHandler(Exception e,
                                                                                         HttpServletResponse response,
                                                                                         HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, false);
        map.put("message", "请求MediaType类型错误");
        map.put(IS_CUSTOM, true);
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }


    //    @ExceptionHandler({EmptyResultDataAccessException.class})
    //    @Order(7)
    public ResponseEntity<Map<String, Object>> emptyResultDataAccessExceptionHandler(Exception e,
                                                                                     HttpServletResponse response,
                                                                                     HttpServletRequest request) {
        Map<String, Object> map = buildMap(e, request, false);
        map.put("message", Throwables.getRootCause(e).getMessage());
        map.put(IS_CUSTOM, true);
        return returnMap(map, HttpStatus.BAD_REQUEST);
    }


//    @ExceptionHandler({Exception.class})
//    @Order(10)
    public ResponseEntity<Map<String, Object>> exceptionHandler(Exception e, HttpServletResponse response,
                                                                HttpServletRequest request) {
        ResponseEntity<Map<String, Object>> responseEntity = feignExceptionHandler(e, request);
        if (responseEntity != null) {
            return responseEntity;
        }
        Map<String, Object> map = buildMap(e, request, false);
        if (isProduction) {
            map.put("message", "服务器异常");
        }
        return returnMap(map, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    private Map<String, Object> buildMap(Throwable e, HttpServletRequest request, boolean isCustom,
                                         boolean isRootException) {
        Map<String, Object> map = Maps.newHashMap();
        Throwable rootCause = e;
        if (!isRootException) {
            rootCause = Throwables.getRootCause(e);
        }
        if (rootCause == null) {
            rootCause = e;
        }
        map.put("path", request.getRequestURI());
        map.put("timestamp", DateTime.now().toString(Dates.DATE_TIME_FORMATTER));
        map.put("message", rootCause.getMessage() == null ? "" : rootCause.getMessage());
        map.put("exception", rootCause.getClass().getName());

        map.put("module", appName);


        return map;
    }

    private Map<String, Object> buildMap(Throwable e, HttpServletRequest request, boolean isCustom) {
        return buildMap(e, request, isCustom, false);
    }

    private ResponseEntity<Map<String, Object>> returnMap(Map<String, Object> map, HttpStatus status) {
        map.put("status", status.value());
        map.put("error", status.getReasonPhrase());
        ResponseEntity<Map<String, Object>> result;
        if (isSimpleResult && (CURRENT_IGNORE_SIMPLE_RESULT.get() == null || !CURRENT_IGNORE_SIMPLE_RESULT.get())) {
            result = new ResponseEntity<>(map, HttpStatus.OK);
        } else {
            result = new ResponseEntity<>(map, status);
        }
        CURRENT_IGNORE_SIMPLE_RESULT.remove();
        return result;
    }


    private ResponseEntity<Map<String, Object>> feignExceptionHandler(Exception e, HttpServletRequest request) {
        Throwable t = e;
        boolean isFeignEx = false;
        if (e.getClass().getName().contains("feign")) {
            isFeignEx = true;
        }
        if (!isFeignEx) {
            Throwable rootCause = Throwables.getRootCause(e);
            if ("com.netflix.client.ClientException".equals(rootCause.getClass().getName())) {
                isFeignEx = true;
                t = rootCause;
            }
        }
        if (isFeignEx) {
            Map<String, Object> map = buildMap(t, request, false, true);
            map.put("message", "微服务调用异常");
            ResponseEntity<Map<String, Object>> responseEntity = returnMap(map, HttpStatus.INTERNAL_SERVER_ERROR);
            FEIGN_INVOKE_STACK.remove();
            return responseEntity;
        }
        return null;
    }


}