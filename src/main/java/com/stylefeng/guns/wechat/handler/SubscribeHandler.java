package com.stylefeng.guns.wechat.handler;

import com.stylefeng.guns.modular.biz.model.UserInfo;
import com.stylefeng.guns.modular.biz.service.UserInfoService;
import com.stylefeng.guns.modular.biz.util.PKGenerator;
import com.stylefeng.guns.wechat.builder.TextBuilder;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Map;

/**
 * @author Binary Wang(https://github.com/binarywang)
 */
@Component
public class SubscribeHandler extends AbstractHandler {


  @Autowired
  private UserInfoService userInfoService;

  @Override
  public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
                                  Map<String, Object> context, WxMpService weixinService,
                                  WxSessionManager sessionManager) throws WxErrorException {

    this.logger.info("新关注用户 OPENID: " + wxMessage.getFromUser());

    // 获取微信用户基本信息
    WxMpUser userWxInfo = weixinService.getUserService()
        .userInfo(wxMessage.getFromUser(), null);

    if (userWxInfo != null) {
      UserInfo user = new UserInfo();
      user.setId(PKGenerator.getInstance().generateKey());
      user.setCity(userWxInfo.getCity());
      user.setCountry(userWxInfo.getCountry());
      user.setProvince(userWxInfo.getProvince());
      user.setUserHeadImgUrl(userWxInfo.getHeadImgUrl());
      user.setUserNickName(userWxInfo.getNickname());
      user.setUserOpenid(userWxInfo.getOpenId());
      user.setUserSex(userWxInfo.getSex());
      user.setGmtCreate(new Date());

      userInfoService.saveUserInfo(user);
      // TODO 可以添加关注用户到本地
    }

    WxMpXmlOutMessage responseResult = null;
    try {
      responseResult = handleSpecial(wxMessage);
    } catch (Exception e) {
      this.logger.error(e.getMessage(), e);
    }

    if (responseResult != null) {
      return responseResult;
    }

    try {
      return new TextBuilder().build("感谢关注", wxMessage, weixinService);
    } catch (Exception e) {
      this.logger.error(e.getMessage(), e);
    }

    return null;
  }

  /**
   * 处理特殊请求，比如如果是扫码进来的，可以做相应处理
   */
  private WxMpXmlOutMessage handleSpecial(WxMpXmlMessage wxMessage)
      throws Exception {
    //TODO
    return null;
  }

}
