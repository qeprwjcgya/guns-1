package com.stylefeng.guns.modular.biz.controller.data;

import com.stylefeng.guns.modular.biz.model.InsuranceCompany;

import java.util.List;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2015-2016 cadyd.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-05-05 17:56 </p>
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
public class CompanyList {
    List<InsuranceCompany> data = null;

    public List<InsuranceCompany> getData() {
        return data;
    }

    public void setData(List<InsuranceCompany> data) {
        this.data = data;
    }
}
