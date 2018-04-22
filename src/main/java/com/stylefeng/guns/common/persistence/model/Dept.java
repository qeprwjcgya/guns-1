package com.stylefeng.guns.common.persistence.model;

/**
 * <p>
 * 部门表
 * </p>
 *
 * @author stylefeng
 * @since 2017-07-11
 */
public class Dept extends Base {

    private static final long serialVersionUID = 1L;
    /**
     * 排序
     */
    private Integer num;
    /**
     * 父部门id
     */
    private Integer pid;
    /**
     * 父级ids
     */
    private String  pids;
    /**
     * 简称
     */
    private String  simplename;
    /**
     * 全称
     */
    private String  fullname;
    /**
     * 提示
     */
    private String  tips;
    /**
     * 版本（乐观锁保留字段）
     */
    private Integer version;

    /**
     * 纬度
     */
    private Double latitude;

    /**
     * 经度
     */
    private Double longitude;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPids() {
        return pids;
    }

    public void setPids(String pids) {
        this.pids = pids;
    }

    public String getSimplename() {
        return simplename;
    }

    public void setSimplename(String simplename) {
        this.simplename = simplename;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "id=" + id +
                ", num=" + num +
                ", pid=" + pid +
                ", pids=" + pids +
                ", simplename=" + simplename +
                ", fullname=" + fullname +
                ", tips=" + tips +
                ", version=" + version +
                "}";
    }
}
