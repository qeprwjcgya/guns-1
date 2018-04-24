/*
 * Copyright (c) 2017.  younatianxia.com Inc. All rights reserved.
 */

package com.stylefeng.guns.cache;


import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import org.apache.commons.lang3.StringUtils;

import java.util.Set;
import java.util.stream.Collectors;

/**
 * 缓存类别，对应 oa-cache.yml 中 oa.common.cache.expires
 *
 * @author <a href="drakelee1221@gmail.com">LiGeng</a>
 * @version 1.0.0, 2017-11-16 09:39
 *
 */
public enum CacheName {
  /**
   * 默认缓存名称，保存的永久不失效
   */
  DEFAULT_CACHE,

  /**
   * 登录-短信发送前的验证码
   */
  PRE_SMS_CODE_LG,

  /**
   * 登录-验证码
   */
  VERIFY_CODE_LG,

  /**
   * 注册-短信发送前的验证码
   */
  PRE_SMS_CODE_RG,

  /**
   * 注册-验证码
   */
  VERIFY_CODE_RG,

  /**
   * 修改密码-短信发送前的验证码
   */
  PRE_SMS_CODE_CP,

  /**
   * 修改密码-验证码
   */
  VERIFY_CODE_CP,

  /**
   * 修改手机号-短信发送前的验证码
   */
  PRE_SMS_CODE_PHONE,

  /**
   * 修改手机号-验证码
   */
  VERIFY_CODE_PHONE,

  ;

  private static final String PREFIX_DELIMITER = "::";

  private static Set<String> names = Sets.newHashSet(values()).stream().map(Enum::toString).collect(Collectors.toSet());

  public static CacheName parse(String cacheName) {
    if (StringUtils.isNotBlank(cacheName)) {
      for (CacheName name : values()) {
        if (cacheName.equalsIgnoreCase(name.toString())) {
          return name;
        }
      }
    }
    return null;
  }

  public static Set<String> names(){
    return ImmutableSet.<String>builder().addAll(names).build();
  }

  /**
   * 构造统一缓存Key
   * @param cacheKey -
   * @return -
   */
  public String getPrefixCacheKey(String cacheKey){
    return getPrefix() + cacheKey;
  }

  /**
   * 构造统一缓存Key的前缀
   * @return -
   */
  public String getPrefix(){
    return this.toString() + PREFIX_DELIMITER;
  }

  /**
   * 构造统一缓存Key
   * @param cacheName 缓存类别
   * @param cacheKey -
   * @return -
   */
  public static String getPrefixCacheKey(String cacheName, String cacheKey) {
    return getPrefix(cacheName) + cacheKey;
  }

  /**
   * 构造统一缓存Key的前缀
   * @param cacheName 缓存类别
   * @return -
   */
  public static String getPrefix(String cacheName) {
    return cacheName + PREFIX_DELIMITER;
  }
}
