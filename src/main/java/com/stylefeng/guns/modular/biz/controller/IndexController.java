package com.stylefeng.guns.modular.biz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-22 13:15 </p>
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
@Controller
public class IndexController {

    /**
     * 导航
     *
     * @author fengshuonan
     */
    @RequestMapping(path = "/wechat/location")
    public String errorPageInfo(Model model) {
        model.addAttribute("tips", "session超时");
        return "/wechat/weindex.html";
    }

}
