package com.stylefeng.guns.modular.biz.vo;

import com.stylefeng.guns.modular.biz.model.Car;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-21 14:52 </p>
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
public class CarVo extends Car {
    private String openid;

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public Car cloneCar() {
        Car car = new Car();
        car.setId(getId());
        car.setCarSeries(getCarSeries());
        car.setCarType(getCarType());
        car.setCarNumberRegion(getCarNumberRegion());
        car.setCarNumberStart(getCarNumberStart());
        car.setCarNumberEnd(getCarNumberEnd());
        car.setCarUserName(getCarUserName());
        car.setCarInsuranceTime(getCarInsuranceTime());
        car.setCarInsuranceCompanyId(getCarInsuranceCompanyId());
        car.setCarInsuranceCompany(getCarInsuranceCompany());
        car.setGmtCreate(getGmtCreate());
        car.setGmtModified(getGmtModified());
        car.setUserId(getUserId());
        return car;
    }
}
