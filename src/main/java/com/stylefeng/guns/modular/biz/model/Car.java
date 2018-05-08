package com.stylefeng.guns.modular.biz.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-19 21:17 </p>
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
@Table(name = "rcwl_car")
public class Car implements Serializable {

    @Id
    @Column(name = "id")
    private Long id;
    /**
     * 车系列
     */
    @Column(name = "car_series")
    private Integer carSeries;

    /**
     * 系列名称
     */
    @Column(name = "car_series_name")
    private String carSeriesName;
    /**
     * 车型
     */
    @Column(name = "car_type")
    private Integer carType;
    /**
     * 牌照所属区域(渝A)ID
     */
    @Column(name = "car_number_region")
    private Integer carNumberRegion;

    /**
     * 牌照所属区域(渝A)
     */
    @Column(name = "car_number_start")
    private String carNumberStart;
    /**
     * 车牌5位
     */
    @Column(name = "car_number_end")
    private String carNumberEnd;
    /**
     * 车主姓名
     */
    @Column(name = "car_user_name")
    private String carUserName;
    /**
     * 投保时间
     */
    @Column(name = "car_insurance_time")
    private String carInsuranceTime;

    /**
     * 保险公司ID
     */
    @Column(name = "car_insurance_company_id")
    private Integer carInsuranceCompanyId;
    /**
     * 保险公司
     */
    @Column(name = "car_insurance_company")
    private String carInsuranceCompany;
    /**
     * 创建时间
     */
    @Column(name = "gmt_create")
    private Date gmtCreate;
    /**
     * 修改时间
     */
    @Column(name = "gmt_modified")
    private Date gmtModified;

    /**
     * 用户ID
     */
    @Column(name = "user_id")
    private Long userId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getCarSeries() {
        return carSeries;
    }

    public void setCarSeries(Integer carSeries) {
        this.carSeries = carSeries;
    }

    public Integer getCarType() {
        return carType;
    }

    public void setCarType(Integer carType) {
        this.carType = carType;
    }

    public Integer getCarNumberRegion() {
        return carNumberRegion;
    }

    public void setCarNumberRegion(Integer carNumberRegion) {
        this.carNumberRegion = carNumberRegion;
    }

    public String getCarNumberStart() {
        return carNumberStart;
    }

    public void setCarNumberStart(String carNumberStart) {
        this.carNumberStart = carNumberStart;
    }

    public String getCarNumberEnd() {
        return carNumberEnd;
    }

    public void setCarNumberEnd(String carNumberEnd) {
        this.carNumberEnd = carNumberEnd;
    }

    public String getCarUserName() {
        return carUserName;
    }

    public void setCarUserName(String carUserName) {
        this.carUserName = carUserName;
    }

    public String getCarSeriesName() {
        return carSeriesName;
    }

    public void setCarSeriesName(String carSeriesName) {
        this.carSeriesName = carSeriesName;
    }

    public String getCarInsuranceTime() {
        return carInsuranceTime;
    }

    public void setCarInsuranceTime(String carInsuranceTime) {
        this.carInsuranceTime = carInsuranceTime;
    }

    public Integer getCarInsuranceCompanyId() {
        return carInsuranceCompanyId;
    }

    public void setCarInsuranceCompanyId(Integer carInsuranceCompanyId) {
        this.carInsuranceCompanyId = carInsuranceCompanyId;
    }

    public String getCarInsuranceCompany() {
        return carInsuranceCompany;
    }

    public void setCarInsuranceCompany(String carInsuranceCompany) {
        this.carInsuranceCompany = carInsuranceCompany;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}
