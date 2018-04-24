package com.stylefeng.guns.modular.biz.service;

import com.stylefeng.guns.modular.biz.dto.SmsDto;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-24 15:12 </p>
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
public interface SmsService {

    void sendVerifySMS(SmsDto smsDto);

    void bindUserInfo(SmsDto smsDto);
}
