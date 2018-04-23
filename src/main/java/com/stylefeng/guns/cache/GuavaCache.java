package com.stylefeng.guns.cache;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;

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
public enum GuavaCache {
    CACHE;
    private Cache<String, String> cache =
            CacheBuilder.newBuilder().maximumSize(2).expireAfterWrite(300, TimeUnit.SECONDS)
                        .build(new CacheLoader<String, String>() {
                            @Override
                            public String load(String key) throws Exception {
                                return key;
                            }
                        });

    public Cache<String, String> getCache() {
        return cache;
    }
}
