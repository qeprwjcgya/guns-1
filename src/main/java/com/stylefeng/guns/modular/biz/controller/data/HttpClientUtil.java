package com.stylefeng.guns.modular.biz.controller.data;

import com.alibaba.fastjson.JSON;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * http客户端
 *
 * @author：WangYuanJun
 * @date：2017年12月20日 下午8:26:51
 */
public class HttpClientUtil {

    /**
     * post请求传输map数据
     *
     * @param url
     * @param map
     * @param encoding
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */
    public static String sendPostDataByMap(String url, Map<String, String> map, String encoding)
            throws ClientProtocolException, IOException {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建post方式请求对象
        HttpPost httpPost = new HttpPost(url);

        // 装填参数
        List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>();
        if (map != null) {
            for (Entry<String, String> entry : map.entrySet()) {
                nameValuePairs.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
            }
        }

        // 设置参数到请求对象中
        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs, encoding));

        // 设置header信息
        // 指定报文头【Content-type】、【User-Agent】
        httpPost.setHeader("Content-type", "application/x-www-form-urlencoded");
        httpPost.setHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");

        // 执行请求操作，并拿到结果（同步阻塞）
        CloseableHttpResponse response = httpClient.execute(httpPost);
        // 获取结果实体
        // 判断网络连接状态码是否正常(0--200都数正常)
        if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
            result = EntityUtils.toString(response.getEntity(), "utf-8");
        }
        // 释放链接
        response.close();

        return result;
    }

    /**
     * post请求传输json数据
     *
     * @param url
     * @param json
     * @param encoding
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */
    public static String sendPostDataByJson(String url, String json, String encoding)
            throws ClientProtocolException, IOException {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();

        // 创建post方式请求对象
        HttpPost httpPost = new HttpPost(url);

        // 设置参数到请求对象中
        StringEntity stringEntity = new StringEntity(json, ContentType.APPLICATION_JSON);
        stringEntity.setContentEncoding("utf-8");
        httpPost.setEntity(stringEntity);

        // 执行请求操作，并拿到结果（同步阻塞）
        CloseableHttpResponse response = httpClient.execute(httpPost);

        // 获取结果实体
        // 判断网络连接状态码是否正常(0--200都数正常)
        if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
            result = EntityUtils.toString(response.getEntity(), "utf-8");
        }
        // 释放链接
        response.close();

        return result;
    }

    /**
     * get请求传输数据
     *
     * @param url
     * @param encoding
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */
    public static String sendGetData(String url, String encoding) throws ClientProtocolException, IOException {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();

        // 创建get方式请求对象
        HttpGet httpGet = new HttpGet(url);
        httpGet.addHeader("Content-type", "application/json");
        // 通过请求对象获取响应对象
        CloseableHttpResponse response = httpClient.execute(httpGet);

        // 获取结果实体
        // 判断网络连接状态码是否正常(0--200都数正常)
        if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
            result = EntityUtils.toString(response.getEntity(), "utf-8");
        }
        // 释放链接
        response.close();

        return result;
    }


    public static void main(String[] args) throws Exception {
        String url =
                "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/carType?mobile=MTU4MjM0MzIxNDQ=&id=0&flag=0&hot=0&sign=C12ADD9D2255A3E5B4F52C5B7ED39635CAD00202";
        String body = sendGetData(url, "utf-8");
        TypeList typeList = JSON.parseObject(body, TypeList.class);
        for (TypeModel model : typeList.getData()) {
            System.err.println(JSON.toJSONString(model));
            String tmpUrl =
                    "http://wxed67c85882b20bbc.mendian.wechat.yunqixiu.com/wechat-web-war/car/carType?mobile=MTU4MjM0MzIxNDQ=&id="
                    + model.getId() + "&sign=7CF726BF0FC08AD3300C885856E1F80D599CF3CF";
            String tmpBody = sendGetData(tmpUrl,"utf-8");
            TypeList tmpList = JSON.parseObject(tmpBody, TypeList.class);
            for(TypeModel tmpModel:tmpList.getData()){
                System.out.println(JSON.toJSONString(tmpModel));
            }

        }

    }

//    {
//        "id": 203,
//            "name": "合资 100",
//            "lg": "http://img.tqmall.com/images/car/203.jpg",
//            "fw": "",
//            "bId": 9,
//            "sId": 203,
//            "cName": "一汽大众(奥迪) 100"
//    }

    //    public void testSendPostDataByMap() throws ClientProtocolException, IOException {
    //        String url = "http://localhost:8080/httpService/sendPostDataByMap";
    //        Map<String, String> map = new HashMap<String, String>();
    //        map.put("name", "wyj");
    //        map.put("city", "南京");
    //        String body = sendPostDataByMap(url, map, "utf-8");
    //        System.out.println("响应结果：" + body);
    //    }
    //
    //    public void testSendPostDataByJson() throws ClientProtocolException, IOException {
    //        String url = "http://localhost:8080/httpService/sendPostDataByJson";
    //        Map<String, String> map = new HashMap<String, String>();
    //        map.put("name", "wyj");
    //        map.put("city", "南京");
    //        String body = sendPostDataByJson(url, JSON.toJSONString(map), "utf-8");
    //        System.out.println("响应结果：" + body);
    //    }
    //
    //    public void testSendGetData() throws ClientProtocolException, IOException {
    //        String url = "http://localhost:8080/httpService/sendGetData?name=wyj&city=南京";
    //        String body = sendGetData(url, "utf-8");
    //        System.out.println("响应结果：" + body);
    //    }

}