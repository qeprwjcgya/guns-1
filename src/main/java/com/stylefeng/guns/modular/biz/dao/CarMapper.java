package com.stylefeng.guns.modular.biz.dao;


import com.stylefeng.guns.modular.biz.dto.CarDto;
import com.stylefeng.guns.modular.biz.model.Car;
import com.stylefeng.guns.modular.biz.util.BaseMapper;

import java.util.List;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-19 21:47 </p>
 * <p>Modification Order 1: </p>
 * <pre>
 *  Modified Date：
 *  Version：
 *  Modifier：
 *  Modification Content：
 * </pre>
 * <p>Modification Order 2：…</p>
 *
 * @author <a href="wubin3347@gmail.com">wubin</a>
 * @version 1.0.0
 */
public interface CarMapper extends BaseMapper<Car> {
    /**
     * 根据openId获取车辆列表
     * @param opendId
     * @return
     */
    List<CarDto> getCarListByOpenId(String opendId);
}
