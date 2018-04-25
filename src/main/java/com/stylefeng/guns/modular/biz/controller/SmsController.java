package com.stylefeng.guns.modular.biz.controller;

import com.alibaba.fastjson.JSON;
import com.stylefeng.guns.cache.SmsCache;
import com.stylefeng.guns.core.util.MD5Util;
import com.stylefeng.guns.modular.biz.dto.SmsDto;
import com.stylefeng.guns.modular.biz.dto.SmsToken;
import com.stylefeng.guns.modular.biz.service.SmsService;
import com.stylefeng.guns.modular.biz.util.CaptchaUtil;
import com.stylefeng.guns.modular.biz.util.IPUtils;
import com.xiaoleilu.hutool.lang.Assert;
import com.xiaoleilu.hutool.util.StrUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-24 14:12 </p>
 * <p>Modification Record 1: </p>
 * <pre>
 *  Modified Date：
 *  Version：
 *  Modifier：
 *  Modification Content：
 * </pre>
 * <p>Modification Record 2：…</p>
 *
 * @author <a href="wubin3347@gmail.com">wubin</a>
 * @version 1.0.0
 */
@RestController
public class SmsController {

    @Autowired
    private SmsService smsService;

    /**
     * 发送短信前获取混淆验证码，默认5分钟有效
     *
     * @param codeLength 长度，默认5位
     * @return {@link CaptchaUtil#getEncryptRandomCode(String)}
     */
    @GetMapping(path = "/user/preSMS")
    public ResponseEntity<String> preSMS(@RequestParam(defaultValue = "5") Integer codeLength,
                                         HttpServletRequest request) {

        String code = CaptchaUtil.getRandomCode(codeLength);
        String key = MD5Util.encrypt(code).toUpperCase();

        SmsCache.CACHE.getCache().put(IPUtils.getRealIp(request), JSON.toJSONString(new SmsToken(key)));
        return new ResponseEntity<>(CaptchaUtil.getEncryptRandomCode(code), HttpStatus.OK);
    }


    /**
     * 发送短信
     *
     * @return ResponseEntity<String>
     */
    @PostMapping(path = "/user/smsCode")
    public ResponseEntity smsCode(SmsDto smsDto, HttpServletRequest request) {
        Assert.isTrue(smsDto.getCode() != null && StrUtil.isNotBlank(smsDto.getCode().toString()), "验证码为空");
        smsDto.setIp(IPUtils.getRealIp(request));
        smsService.sendVerifySMS(smsDto);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    /**
     * 绑定电话
     *
     * @param smsDto
     * @return
     */
    public ResponseEntity bindUserInfo(SmsDto smsDto) {
        Assert.notEmpty(smsDto.getOpenid(), "程序出错.");
        Assert.notEmpty(smsDto.getCode(), "验证码不能为空");
        Assert.notEmpty(smsDto.getPhone(), "电话号码不能为空");
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
