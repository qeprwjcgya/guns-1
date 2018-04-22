package com.stylefeng.guns.modular.biz.vo;

import java.util.Date;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-21 15:10 </p>
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
public class OrderVo {
    private String openid;
    private String projectId;
    private Long empId;
    private Long carRegion;
    private String carNumber;

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public Long getEmpId() {
        return empId;
    }

    public void setEmpId(Long empId) {
        this.empId = empId;
    }

    public Long getCarRegion() {
        return carRegion;
    }

    public void setCarRegion(Long carRegion) {
        this.carRegion = carRegion;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    /**
     * <p>Description: </p>
     * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
     * <p>Other: </p>
     * <p>Date：2018-04-21 16:43 </p>
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
    public static class Store {
        private Integer id;
        private String storeName;
        private Integer storeId;
        /**
         * 经度
         */
        private Double longitude;
        /**
         * 纬度
         */
        private Double latitude;
        private Date gmtCreate;

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getStoreName() {
            return storeName;
        }

        public void setStoreName(String storeName) {
            this.storeName = storeName;
        }

        public Double getLongitude() {
            return longitude;
        }

        public void setLongitude(Double longitude) {
            this.longitude = longitude;
        }

        public Double getLatitude() {
            return latitude;
        }

        public void setLatitude(Double latitude) {
            this.latitude = latitude;
        }

        public Date getGmtCreate() {
            return gmtCreate;
        }

        public void setGmtCreate(Date gmtCreate) {
            this.gmtCreate = gmtCreate;
        }

        public Integer getStoreId() {
            return storeId;
        }

        public void setStoreId(Integer storeId) {
            this.storeId = storeId;
        }
    }
}
