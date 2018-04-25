package com.stylefeng.guns.modular.biz.service.impl;

import com.google.common.cache.Cache;
import com.stylefeng.guns.cache.SmsCache;
import com.stylefeng.guns.modular.biz.dao.UserInfoMapper;
import com.stylefeng.guns.modular.biz.dto.SmsDto;
import com.stylefeng.guns.modular.biz.exception.BusinessException;
import com.stylefeng.guns.modular.biz.model.UserInfo;
import com.stylefeng.guns.modular.biz.service.SmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-24 15:49 </p>
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
@Service
public class SmsServiceImpl implements SmsService {


    @Autowired
    private UserInfoMapper userInfoMapper;

    /**
     * 发送验证短信
     *
     * @param smsDto void
     * @date 2016年11月24日下午2:49:06
     * @author yuan li
     */
    @Override
    public void sendVerifySMS(SmsDto smsDto) {
        try {
            // 验证发送短信前的验证码，为空则不验证（老接口）
            String token = null;
            Cache<String, String> cache = SmsCache.CACHE.getCache();
            if ((token = cache.getIfPresent(smsDto.getCode().toUpperCase())) == null) {
                throw new BusinessException("图片验证码失效,请获取后重新输入");
            }
            if (!isMobileNO(smsDto.getPhone())) {
                throw new BusinessException("请输入正确的手机号码");
            }
            String code = new Random().nextInt(999999) + "";


            UserInfo userInfo = userInfoMapper.selectByPrimaryKey(smsDto.getPhone());
            // 注册
            if (null != userInfo && smsDto.getType() == 1) {
                throw new BusinessException("对不起，手机号已经注册过!");
            }
            // 找回密码
            if (null == userInfo && smsDto.getType() == 2) {
                throw new BusinessException("对不起，该用户不存在!");
            }

            cache.put(smsDto.getPhone(), code);

            smsDto.setContent("验证码为" + code + "，请在页面中输入以完成验证");
            // 发送手机短信
            sendMsg(smsDto);
            // 删除发送前置验证码
            if (token != null) {
                cache.invalidate(smsDto.getIp());
            }
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public void bindUserInfo(SmsDto smsDto) {
        try {
            UserInfo userInfo = userInfoMapper.selectByPrimaryKey(smsDto.getOpenid());
            userInfo.setUserPhone(smsDto.getPhone());
            this.userInfoMapper.insertSelective(userInfo);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    private boolean isMobileNO(String mobiles) {
        Pattern para = Pattern.compile("^[1][3-8]\\d{9}$");
        Matcher m = para.matcher(mobiles);
        return m.matches();
    }

    public void sendMsg(SmsDto dto) {

    }

}
