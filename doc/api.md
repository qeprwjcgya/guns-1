# 1、注册绑定
## 1.1、请求短信验证码

/car/user/preSMS
请求方式：GET

例：如果返回值可能为 GEjRgrmt8hswAWm7VD2m94GSp7Xb9NAK96Q3433735
    还原规则，取返回值的倒数第二位为下标index，倒数第一位为截取长度，
    还原后code = rgrmt(转换为小写)
    MD5后再转换为大写


```
GEjRgrmt8hswAWm7VD2m94GSp7Xb9NAK96Q3433735
```

## 1.2、发送短信
/car/user/smsCode
请求方式：POST

字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
phone                  | String            |  N   | 电话号码
code                   | String            |  N   | 验证码
openid                 | String            |  N   | 微信openid

```
无返回结果，http.status==200表成功
```

## 1.3、注册绑定
/car/user/bind
请求方式:POST

字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
phone                  | String            |  N   | 电话
code                   | String            |  N   | 短信验证码
openid                 | String            |  N   | 微信openid

```
无返回结果，http.status==200表成功
```

### 2、车辆列表
/wechat/car/getCarList
请求方式：GET

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
openid                 | String            |  N   | 微信openid

### 3、添加、修改车辆信息
/wechat/car/addCarInfo
请求方式：POST
参数 
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
openid                 | String            |  N   | 微信openid
carSeries              | number            |  N   | 车系列ID
carNumberRegion        | number            |  N   | 牌照所属区域ID
carNumberEnd           | String            |  N   | 车牌后五位
carUserName            | String            |  N   | 车主姓名
carInsuranceTime       | date              |  N   | 投保时间 
carInsuranceCompanyId  | number            |  N   | 投保公司ID

```
{
	"carInsuranceCompanyId": 43,
	"carInsuranceTime": 1525769370625,
	"carNumberEnd": "BM760",
	"carNumberRegion": 12,
	"carSeries": 11,
	"carUserName": "Bean",
	"openid": "ODKLSOWEIFszdCDSDPOdasdfawe"
}
```

### 4、查询车辆信息列表

/wechat/car/getCarList
请求方式:GET

字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
openid                 | String            |  N   | 微信openid

```
[
{
	"id":1, 								//主键
	"carNumber":"渝D.BM760",				//车牌号
	"carName":"宝马",						//车型名
	"carLogo":"http://www.jmall.com/a.jpg"  //车型logo
},
{
	"id":2, 								//主键
	"carNumber":"渝D.BM760",				//车牌号
	"carName":"宝马",						//车型名
	"carLogo":"http://www.jmall.com/a.jpg"  //车型logo
}
]
```

### 5、查询单条车辆信息
/wechat/car/getCarById
请求方式:GET

字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
id                     | String            |  N   | 列表ID

```
{
    "id": 1,//ID							
    "carSeries": 1,//车型 ID
    "carSeriesName": "长安", //车型 名称
    "carType": 1, //--
    "carNumberRegion": 1, //车牌ID
    "carNumberStart": "渝A", //车牌头
    "carNumberEnd": "BM760", //车牌后五位
    "carUserName": "BEAN", //车主姓名 
    "carInsuranceTime": "2018-05-20", //投保时间
    "carInsuranceCompanyId": 1, //保险公司ID
    "carInsuranceCompany": "平安", //保险公司名称
    "gmtCreate": null, 
    "gmtModified": null,
    "userId": 1   //用户ID
}
```



### 6、品牌选择
/wechat/car/getCarType
是否推荐类型(1:推荐;2:否)
请求方式:GET

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
type                   | int               |  N   | 是否推荐类型(1:推荐;2:否)

```
[
    {
        "id": 1,
        "parentId": 0,
        "brandName": "DS",
        "brandLogo": "https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725776.png",
        "brandSort": 75,
        "brandLevel": 1,
        "gmtCreate": null,
        "recommend": 2,
        "firstWord": "D"
    },
    {
        "id": 2,
        "parentId": 0,
        "brandName": "GMC",
        "brandLogo": "https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725784.png",
        "brandSort": 76,
        "brandLevel": 1,
        "gmtCreate": null,
        "recommend": 2,
        "firstWord": "G"
    }
]
```

### 7、车型选择
/wechat/car/getCarTypeParent
是否推荐类型(1:推荐;2:否)
请求方式:GET

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
parentId               | int               |  N   | 品牌对应的节点

```
[
    {
        "id": 145,
        "parentId": 1,
        "brandName": "进口 DS3",
        "brandLogo": "https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725781.jpg",
        "brandSort": 4,
        "brandLevel": 2,
        "gmtCreate": null,
        "recommend": 2,
        "firstWord": ""
    },
    {
        "id": 146,
        "parentId": 1,
        "brandName": "进口 DS4",
        "brandLogo": "https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725782.jpg",
        "brandSort": 5,
        "brandLevel": 2,
        "gmtCreate": null,
        "recommend": 2,
        "firstWord": ""
    }
]
```

### 8、车牌选择
/wechat/car/getPlatesNumber
查询根路径 parentId=0,对应详细数据根据id来取值
请求方式:GET

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
parentId               | int               |  N   | 品牌对应的节点

```
[
    {
        "id": 2,
        "name": "川",
        "parentId": 0,
        "fw": "C"
    },
    {
        "id": 24,
        "name": "鄂",
        "parentId": 0,
        "fw": "E"
    },
    {
        "id": 42,
        "name": "桂",
        "parentId": 0,
        "fw": "G"
    }
]    
```

### 9、保险公司选择
/wechat/car/getInCompany
请求方式:GET

```
[
    {
        "id": 1,
        "companyName": "平安汽车保险",
        "phone": "95512",
        "sort": 1
    },
    {
        "id": 2,
        "companyName": "中国人保汽车保险",
        "phone": "95518",
        "sort": 2
    }
]    
```


### 10、删除车辆信息
/wechat/car/deleteUpdate 
请求方式:POST

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
id                     | int               |  N   | 车辆信息ID



### 11、经纬度返回最近店铺经纬度
/wechat/car/geo
请求方式：GET

参数
字段                   | 数据类型          | 可空 | 备注 
-----------------------|-------------------|------|----------------------------------------------------------------------------
lng                    | int               |  N   | 经度
lat                    | int               |  N   | 纬度

```

{
	"lng":106.554546,
	"lat":29.576546,
	"title":"双龙店",
	"address":"重庆市渝北区双龙大道"
}

```