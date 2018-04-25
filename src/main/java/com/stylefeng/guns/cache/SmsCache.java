package com.stylefeng.guns.cache;

import com.alibaba.fastjson.JSON;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.stylefeng.guns.modular.biz.dto.SmsToken;

import java.util.concurrent.TimeUnit;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2017-2019 lyzb.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-04-23 21:23 </p>
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
public enum SmsCache {
    CACHE;
    /**
     * key:IP;
     * value:smsToken;
     */
    private Cache<String, String> cache =
            CacheBuilder.newBuilder().maximumSize(1000).expireAfterWrite(300, TimeUnit.SECONDS)
                        .build(new CacheLoader<String, String>() {
                            @Override
                            public String load(String key) throws Exception {
                                return key;
                            }
                        });

    private Cache<String, String> cacheIp =
            CacheBuilder.newBuilder().maximumSize(2000).expireAfterWrite(1800, TimeUnit.SECONDS)
                        .build(new CacheLoader<String, String>() {
                            @Override
                            public String load(String key) throws Exception {
                                return key;
                            }
                        });

    public Cache<String, String> getCache() {
        return cache;
    }

    /**
     * 判断同一个ip只能一分钟以上访问一次并且五分钟之内三次
     *
     * @param ip
     * @return
     */
    public boolean checkIp(String ip) {
        String tokenJson = getCache().getIfPresent(ip);
        SmsToken token = null;
        if (tokenJson != null && !"".equals(tokenJson)) {
            token = JSON.parseObject(tokenJson, SmsToken.class);
            //次数等于10加入黑名单cache
            if (token.getCount() == 10) {
                cacheIp.put(ip, token.getPhone());
            } else if (token.getCount() > 10) {
                return false;
            }
            //清空缓存
            getCache().invalidate(ip);
        } else {
            token = new SmsToken();
            token.setCurrentTime(System.currentTimeMillis());
        }
        token.setCount(token.getCount() + 1);

        boolean flag = false;
        //当两次请求时间小于一分钟，并且次数小于四次返回true
        if (System.currentTimeMillis() - token.getCurrentTime() > 60000L && token.getCount() < 4) {
            flag = true;
        } else {
            flag = false;
        }
        token.setCurrentTime(System.currentTimeMillis());
        cache.put(ip, JSON.toJSONString(token));
        return flag;
    }


}
