/*
 * Copyright (c) 2017.  younatianxia.com Inc. All rights reserved.
 */

package com.stylefeng.guns.modular.biz.exception;

import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public abstract class ExceptionPrinter {
    /**
     * 业务异常打印logger
     */
    private static final Logger logger = LoggerFactory.getLogger(ExceptionPrinter.class);


    /**
     * 用 SCHExceptionPrinter.logger 打印异常
     *
     * @param exceptionId
     * @param requestPath
     * @param e
     */
    public static void printStackTrace(String exceptionId, String requestPath, String requestMethod, Throwable e) {
        printStackTrace(exceptionId, requestPath, requestMethod, e, logger);
    }

    /**
     * 用传入的logger打印异常
     *
     * @param exceptionId
     * @param requestPath
     * @param e
     * @param logger
     */
    public static void printStackTrace(String exceptionId, String requestPath, String requestMethod, Throwable e,
                                       Logger logger) {
        List<String> list = Lists.newArrayList();
        StringBuffer sb = new StringBuffer();
        if (StringUtils.isNotBlank(exceptionId)) {
            list.add("exceptionId: " + exceptionId);
        }
        if (StringUtils.isNotBlank(requestPath)) {
            list.add("path: " + requestPath);
        }
        if (StringUtils.isNotBlank(requestMethod)) {
            list.add("method: " + requestMethod);
        }

        logger.error(StringUtils.join(list, "\r\n"), e);
    }
}
