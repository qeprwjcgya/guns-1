package com.stylefeng.guns.modular.biz.controller.data;

import java.io.Serializable;
import java.util.List;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-17 21:34 </p>
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
public class TypeList implements Serializable {
    private List<TypeModel> data;

    public List<TypeModel> getData() {
        return data;
    }

    public void setData(List<TypeModel> data) {
        this.data = data;
    }
}
