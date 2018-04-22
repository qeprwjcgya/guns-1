package com.stylefeng.guns.modular.biz.service.impl;

import com.stylefeng.guns.modular.biz.dao.UserInfoMapper;
import com.stylefeng.guns.modular.biz.model.UserInfo;
import com.stylefeng.guns.modular.biz.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-21 18:58 </p>
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
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoMapper userMapper;

    @Override
    public void saveUserInfo(UserInfo user) {
        this.userMapper.insertSelective(user);
    }
}
