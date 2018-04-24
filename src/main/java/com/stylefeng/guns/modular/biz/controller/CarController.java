package com.stylefeng.guns.modular.biz.controller;

import com.google.common.collect.Maps;
import com.stylefeng.guns.modular.biz.model.Store;
import com.stylefeng.guns.modular.biz.service.CarService;
import com.stylefeng.guns.modular.biz.util.PKGenerator;
import com.stylefeng.guns.modular.biz.vo.CarVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-22 18:13 </p>
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
@RestController
public class CarController {


    @Autowired
    private CarService carService;

    @RequestMapping(path = "/wechat/geo")
    public ResponseEntity<Map<String, String>> getGeo() {
        Map<String, String> map = Maps.newHashMap();
        map.put("lng", "106.554546");
        map.put("lat", "29.576546");
        map.put("title", "重庆市渝北区店");
        map.put("addr", "重庆市渝北区双龙大道");

        return new ResponseEntity<>(map, HttpStatus.OK);
    }


    @PostMapping("/wechat/car/addCarInfo")
    public ResponseEntity insertCarInfo(CarVo carVo) {
        carVo.setId(PKGenerator.getInstance().generateKey());
        carService.insertCarInfo(carVo);
        return new ResponseEntity(HttpStatus.OK);
    }


    @GetMapping("/wechat/car/geo")
    public ResponseEntity getGeo(Store store) {
        return new ResponseEntity(carService.getGeo(store), HttpStatus.OK);
    }

    @GetMapping("/wechat/car/getCarType")
    public ResponseEntity getCarType(@RequestParam("type") Integer type) {
        return new ResponseEntity(carService.getCarType(type), HttpStatus.OK);
    }

    @GetMapping("/wechat/car/getCarTypeParent")
    public ResponseEntity getCarTypeParent(@RequestParam("parentId") Long parentId){
        return  new ResponseEntity(carService.getCarTypeParent(parentId),HttpStatus.OK);
    }
}
