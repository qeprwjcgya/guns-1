package com.stylefeng.guns.modular.biz.service.impl;

import com.stylefeng.guns.modular.biz.dao.*;
import com.stylefeng.guns.modular.biz.dto.CarDto;
import com.stylefeng.guns.modular.biz.exception.BusinessException;
import com.stylefeng.guns.modular.biz.model.*;
import com.stylefeng.guns.modular.biz.service.CarService;
import com.stylefeng.guns.modular.biz.util.BaseService;
import com.stylefeng.guns.modular.biz.util.MapUtils;
import com.stylefeng.guns.modular.biz.util.PKGenerator;
import com.stylefeng.guns.modular.biz.vo.CarVo;
import com.stylefeng.guns.modular.biz.vo.OrderVo;
import com.stylefeng.guns.modular.biz.vo.StoreVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
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
@Service
public class CarServiceImpl extends BaseService<Car> implements CarService {

    @Autowired
    private BrandMapper brandMapper;
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
    @Autowired
    private InsuranceCompanyMapper insuranceCompanyMapper;
    @Autowired
    private PlatesNumberMapper platesNumberMapper;

    @Override
    public boolean insertCarInfo(CarVo carVo) {
        try {
            Car car = carVo.cloneCar();
            Brand brand = this.brandMapper.selectByPrimaryKey(carVo.getCarSeries());
            InsuranceCompany company = this.insuranceCompanyMapper.selectByPrimaryKey(carVo.getCarInsuranceCompanyId());
            PlatesNumber carNumber = this.platesNumberMapper.selectByPrimaryKey(carVo.getCarNumberRegion());

            if (brand != null && company != null && carNumber != null) {
                return false;
            }
            UserInfo userInfo = new UserInfo();
            userInfo.setUserOpenid(carVo.getOpenid());
            userInfo = this.userInfoMapper.selectOne(userInfo);
            car.setUserId(userInfo.getId());
            car.setId(PKGenerator.getInstance().generateKey());
            car.setCarSeriesName(brand.getBrandName());
            car.setCarInsuranceCompany(company.getCompanyName());
            car.setCarNumberStart(carNumber.getName());
            car.setGmtCreate(new Date());
            int result = carMapper.insertSelective(car);
            return result > 0 ? true : false;
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public Order addOrder(OrderVo orderVo) {
        try {
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
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public StoreVo getGeo(Store store) {
        try {
            Store storeTmp = this.storeMapper.selectNearByStore(store);
            StoreVo storeVo = new StoreVo();
            storeVo.setLatitude(storeTmp.getLatitude());
            storeVo.setLongitude(storeTmp.getLongitude());
            storeVo.setStoreName(storeTmp.getStoreName());

            if (storeTmp != null) {
                double distance =
                        MapUtils.GetDistance(store.getLatitude(), store.getLongitude(), storeTmp.getLatitude(),
                                             storeTmp.getLongitude());
                storeVo.setDistance(distance);
            }
            return storeVo;
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public List<Brand> getCarType(Integer type) {
        try {
            if (type == 1) {
                Example example = new Example(Brand.class);
                example.createCriteria().andEqualTo("recommend", 1).andEqualTo("parentId", 0);
                return this.brandMapper.selectByExample(example);
            } else {
                Example example = new Example(Brand.class);
                example.createCriteria().andEqualTo("parentId", 0);
                return this.brandMapper.selectByExample(example);
            }
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public List<Brand> getCarTypeParent(Long parentId) {
        try {
            Example example = new Example(Brand.class);
            example.createCriteria().andEqualTo("parentId", parentId);
            return this.brandMapper.selectByExample(example);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public List<InsuranceCompany> getInCompany() {
        try {
            return this.insuranceCompanyMapper.selectAll();
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public List<PlatesNumber> getPlatesNumber(Long parentId) {
        try {
            Example example = new Example(PlatesNumber.class);
            example.createCriteria().andEqualTo("parentId", parentId);
            return this.platesNumberMapper.selectByExample(example);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public List<CarDto> getCarList(String openid) {
        try {
            return this.carMapper.getCarListByOpenId(openid);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public Car getCarById(Long id) {
        try {
            return this.carMapper.selectByPrimaryKey(id);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }

    @Override
    public void deleteCar(Long id) {
        try {
            Car car = this.carMapper.selectByPrimaryKey(id);
            car.setCarStatus(0);
            this.carMapper.updateByPrimaryKeySelective(car);
        } catch (Exception ex) {
            throw new BusinessException();
        }
    }
}
