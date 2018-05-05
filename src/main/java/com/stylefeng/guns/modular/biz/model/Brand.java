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
 * <p>Date：2018-04-19 21:15 </p>
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
@Table(name = "car_brand")
public class Brand implements Serializable {

    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "parent_id")
    private Integer parentId;
    /**
     * 品牌名称
     */
    @Column(name = "brand_name")
    private String brandName;
    /**
     * 品牌logo
     */
    @Column(name = "brand_logo")
    private String brandLogo;
    /**
     * 排序
     */
    @Column(name = "brand_sort")
    private Integer brandSort;
    /**
     * 层级
     */
    @Column(name = "brand_level")
    private Integer brandLevel;
    /**
     * 创建时间
     */
    @Column(name = "gmt_create")
    private Date gmtCreate;

    /**
     * 推荐类型
     */
    @Column(name = "recommend")
    private Integer recommend;

    /**
     * 首字母大写
     */
    @Column(name = "first_word")
    private String firstWord;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getBrandLogo() {
        return brandLogo;
    }

    public void setBrandLogo(String brandLogo) {
        this.brandLogo = brandLogo;
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Integer getRecommend() {
        return recommend;
    }

    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    public String getFirstWord() {
        return firstWord;
    }

    public void setFirstWord(String firstWord) {
        this.firstWord = firstWord;
    }

    public Integer getBrandSort() {
        return brandSort;
    }

    public void setBrandSort(Integer brandSort) {
        this.brandSort = brandSort;
    }

    public Integer getBrandLevel() {
        return brandLevel;
    }

    public void setBrandLevel(Integer brandLevel) {
        this.brandLevel = brandLevel;
    }
}
