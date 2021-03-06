package com.stylefeng.guns.modular.biz.controller;

import com.alibaba.fastjson.JSON;
import com.stylefeng.guns.modular.biz.controller.data.*;
import com.stylefeng.guns.modular.biz.dao.BrandMapper;
import com.stylefeng.guns.modular.biz.dao.CarBrandMapper;
import com.stylefeng.guns.modular.biz.dao.InsuranceCompanyMapper;
import com.stylefeng.guns.modular.biz.dao.PlatesNumberMapper;
import com.stylefeng.guns.modular.biz.model.Brand;
import com.stylefeng.guns.modular.biz.model.CarBrand;
import com.stylefeng.guns.modular.biz.model.InsuranceCompany;
import com.stylefeng.guns.modular.biz.model.PlatesNumber;
import com.stylefeng.guns.modular.biz.util.PKGenerator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2015-2016 cadyd.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-05-05 11:47 </p>
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
public class DataController {

    @Autowired
    private BrandMapper brandMapper;
    @Autowired
    private PlatesNumberMapper numberMapper;
    @Autowired
    private InsuranceCompanyMapper companyMapper;
    @Autowired
    private CarBrandMapper carBrandMapper;

    //    @GetMapping("/wechat/data/type")
    public ResponseEntity setData() {
        try {
            String url =
                    "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/carType?mobile=MTU4MjM0MzIxNDQ=&id=0&flag=0&hot=0&sign=C12ADD9D2255A3E5B4F52C5B7ED39635CAD00202";
            String body = HttpClientUtil.sendGetData(url, "utf-8");
            TypeList typeList = JSON.parseObject(body, TypeList.class);
            int index = 0;
            for (TypeModel model : typeList.getData()) {
                System.err.println(JSON.toJSONString(model));
                Brand brand = convertBrand(model, 1, index++, 0);
                this.brandMapper.insertSelective(brand);
                String tmpUrl =
                        "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/carType?mobile=MTU4MjM0MzIxNDQ=&id="
                        + model.getId() + "&sign=7CF726BF0FC08AD3300C885856E1F80D599CF3CF";
                String tmpBody = HttpClientUtil.sendGetData(tmpUrl, "utf-8");
                TypeList tmpList = JSON.parseObject(tmpBody, TypeList.class);
                int indexChild = 0;
                for (TypeModel tmpModel : tmpList.getData()) {
                    System.out.println(JSON.toJSONString(tmpModel));
                    Brand childBrand = convertBrand(tmpModel, 2, indexChild++, model.getId());
                    this.brandMapper.insertSelective(childBrand);
                }

            }

            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
    }

    //    @GetMapping("/wechat/data/carNumber")
    public ResponseEntity getCarNumber() {
        try {
            String url =
                    "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/selectCity?mobile=MTU4MjM0MzIxNDQ=";
            String body = HttpClientUtil.sendGetData(url, "utf-8");
            Document doc = Jsoup.parse(body);
            Elements rows = doc.select("span[class=text]");
            int id = 1;
            for (Element e : rows) {
                String value = e.html();
                String[] arr = value.split(" ");


                System.out.println(arr[0] + "--" + arr[1]);
                PlatesNumber number1 = new PlatesNumber();
                number1.setId(++id);
                number1.setFw(arr[0]);
                number1.setName(arr[1]);
                number1.setParentId(0);
                numberMapper.insertSelective(number1);


                String tmpUrl =
                        "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/selectLicense?license="
                        + arr[1];
                String tmpBody = HttpClientUtil.sendGetData(tmpUrl, "utf-8");
                Document tmpDoc = Jsoup.parse(tmpBody);
                Elements tmpRows = tmpDoc.select("span[class=text]");
                for (Element tmpRow : tmpRows) {
                    PlatesNumber tmpNumber = new PlatesNumber();
                    tmpNumber.setId(++id);
                    tmpNumber.setName(tmpRow.html());
                    tmpNumber.setParentId(number1.getId());
                    tmpNumber.setFw(arr[0]);
                    numberMapper.insertSelective(tmpNumber);
                }
            }
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
    }

    //    @GetMapping("/wechat/car/company")
    public ResponseEntity getCompanyData() {
        try {
            String url =
                    "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/insuranceCompanylist";

            String body = HttpClientUtil.sendGetData(url, "utf-8");
            CompanyList typeList = JSON.parseObject(body, CompanyList.class);
            for (InsuranceCompany company : typeList.getData()) {
                companyMapper.insertSelective(company);
            }
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
    }


    @GetMapping("/wechat/car/brandData")
    public ResponseEntity getBrandData() {
        try {
            String url = "http://crm1.zhongtukj.com/Boss/Service/EasyDataSources/CarData.ashx?action=BrandList";
            System.out.println(url);
            String body = HttpClientUtil.sendGetData(url, "utf-8");

            System.out.println(body);

            CarData data = JSON.parseObject(body,CarData.class);


            for(CarBrand car : data.getData()){
                car.setParentId(0);

                System.err.println("-1--->"+JSON.toJSONString(car));
                this.carBrandMapper.insertSelective(car);

                String urlFirst = "http://crm1.zhongtukj.com/Boss/Service/EasyDataSources/CarData.ashx?action=CheXiList&pid="+car.getId();
                String bodyFirst = HttpClientUtil.sendGetData(urlFirst, "utf-8");
                CarList carFirstList = JSON.parseObject(bodyFirst,CarList.class);
                for(CarBrand carFirst:carFirstList){
                    System.err.println("-2--->"+JSON.toJSONString(carFirst));
                    carFirst.setParentId(car.getId());
                    this.carBrandMapper.insertSelective(carFirst);
                    String urlSecond="http://crm1.zhongtukj.com/Boss/Service/EasyDataSources/CarData.ashx?action=CheXingList&pid="+car.getId();
                    String bodySecond = HttpClientUtil.sendGetData(urlSecond, "utf-8");
                    CarList carSecondList = JSON.parseObject(bodySecond,CarList.class);
                    for(CarBrand carSecond:carSecondList){
                        System.err.println("-3--->"+JSON.toJSONString(carSecond));
                        carSecond.setParentId(carFirst.getId());
                        this.carBrandMapper.insertSelective(carSecond);
                    }
                }

            }

            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
    }


    private Brand convertBrand(TypeModel model, int level, int sort, int parentId) {
        //        https://jmall.oss-cn-hangzhou.aliyuncs.com/shop/0015TPI811.jpg
        String path = "D:\\test\\car\\";
        Brand brand = new Brand();
        brand.setId(model.getId());
        brand.setFirstWord(model.getFw());
        String extension = model.getLg().endsWith(".jpg") ? ".jpg" : ".png";

        String fileName = PKGenerator.getInstance().generateKey() + extension;

        DownloadPicFromURL.downloadPicture(model.getLg(), path + fileName);

        try {
            Thread.sleep(1000);
        } catch (Exception ex) {

        }

        brand.setBrandLogo("https://jmall.oss-cn-hangzhou.aliyuncs.com/car/" + fileName);
        brand.setBrandName(model.getName());
        brand.setBrandLevel(level);
        brand.setBrandSort(sort);
        brand.setParentId(parentId);
        return brand;
    }



}
