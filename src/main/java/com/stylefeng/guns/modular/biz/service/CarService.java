package com.stylefeng.guns.modular.biz.service;

import com.stylefeng.guns.modular.biz.model.Brand;
import com.stylefeng.guns.modular.biz.model.Car;
import com.stylefeng.guns.modular.biz.model.Order;
import com.stylefeng.guns.modular.biz.model.Store;
import com.stylefeng.guns.modular.biz.util.IService;
import com.stylefeng.guns.modular.biz.vo.CarVo;
import com.stylefeng.guns.modular.biz.vo.OrderVo;

import java.util.List;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-21 11:55 </p>
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
public interface CarService extends IService<Car> {

    /**
     * 添加车辆基本信息,送优惠券
     *
     * @param carVo
     * @return
     */
    boolean insertCarInfo(CarVo carVo);

    /**
     * 添加订单
     */
    Order addOrder(OrderVo orderVo);

    /**
     * 根据经纬度查询最近的店铺
     * @param store
     * @return
     */
    Store getGeo(Store store);

    /**
     * 是否推荐类型
     * @return
     */
    List<Brand> getCarType(Integer type);

    /**
     * 查询父id对应的节点
     * @param parentId
     * @return
     */
    public List<Brand> getCarTypeParent(Long parentId);

}
