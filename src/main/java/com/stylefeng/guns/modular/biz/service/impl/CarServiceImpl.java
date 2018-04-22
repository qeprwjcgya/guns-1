package com.stylefeng.guns.modular.biz.service.impl;

import com.stylefeng.guns.modular.biz.dao.*;
import com.stylefeng.guns.modular.biz.model.*;
import com.stylefeng.guns.modular.biz.service.CarService;
import com.stylefeng.guns.modular.biz.util.BaseService;
import com.stylefeng.guns.modular.biz.util.MapUtils;
import com.stylefeng.guns.modular.biz.util.PKGenerator;
import com.stylefeng.guns.modular.biz.vo.CarVo;
import com.stylefeng.guns.modular.biz.vo.OrderVo;
import com.stylefeng.guns.modular.biz.vo.StoreVo;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

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
@Service
public class CarServiceImpl extends BaseService<Car> implements CarService {

    @Autowired
    private CarMapper carMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @Autowired
    private EmployeeMapper employeeMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private StoreMapper storeMapper;

    @Override
    public boolean insertCarInfo(CarVo carVo) {
        Car car = new Car();
        try {
            BeanUtils.copyProperties(car, carVo);
        } catch (Exception ex) {

        }

        UserInfo user = this.userInfoMapper.selectByPrimaryKey(carVo.getOpenid());
        car.setUserId(user.getId());
        car.setUserId(PKGenerator.getInstance().generateKey());
        car.setGmtCreate(new Date());
        int result = carMapper.insertSelective(car);
        return result > 0 ? true : false;
    }

    @Override
    public Order addOrder(OrderVo orderVo) {

        Order order = new Order();
        order.setId(PKGenerator.getInstance().generateKey());

        Project project = this.projectMapper.selectByPrimaryKey(orderVo.getProjectId());
        UserInfo userInfo = this.userInfoMapper.selectByPrimaryKey(orderVo.getOpenid());
        Car car = new Car();
        car.setCarNumberRegion(orderVo.getCarRegion());
        car.setCarNumberEnd(orderVo.getCarNumber());
        car = this.carMapper.selectOne(car);

        Employee employee = this.employeeMapper.selectByPrimaryKey(orderVo.getEmpId());

        if (car != null) {
            order.setCarId(car.getId());
            order.setGmtCreate(new Date());
            order.setOrderPrice(project.getPrice());
            order.setProjectId(project.getId());
            order.setProjectName(project.getName());
            order.setUserId(userInfo.getId());
            order.setEmpId(employee.getId());
            order.setEmpName(employee.getUsername());
            this.orderMapper.insertSelective(order);
            return order;
        } else {
            return null;
        }
    }

    @Override
    public StoreVo getGeo(OrderVo.Store store) {
        OrderVo.Store storeTmp = this.storeMapper.selectNearByStore(store);
        StoreVo storeVo = new StoreVo();
        storeVo.setLatitude(storeTmp.getLatitude());
        storeVo.setLongitude(storeTmp.getLongitude());
        storeVo.setStoreName(storeTmp.getStoreName());

        if (storeTmp != null) {
            double distance = MapUtils.GetDistance(store.getLatitude(), store.getLongitude(), storeTmp.getLatitude(),
                                                   storeTmp.getLongitude());
            storeVo.setDistance(distance);
        }
        return storeVo;
    }
}
