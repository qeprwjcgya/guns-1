package com.stylefeng.guns.cache;

import com.alibaba.fastjson.JSON;
import com.google.common.cache.Cache;
import com.stylefeng.guns.modular.biz.dto.SmsToken;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-23 20:54 </p>
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
public class Test {
    public static void main(String[] args) throws InterruptedException {
        Cache<String,String> cache = SmsCache.CACHE.getCache();
        cache.put("key1", JSON.toJSONString(new SmsToken("1")));
        cache.put("key2",JSON.toJSONString(new SmsToken("2")));
        cache.invalidate("key2");
        int time = 1;
        while(true) {
            System.out.println("第" + time++ + "次取到key1的值为：" + cache.getIfPresent("key1"));
            System.out.println("第" + time++ + "次取到key2的值为：" + cache.getIfPresent("key2"));
            Thread.sleep(1000);
        }
    }
}
