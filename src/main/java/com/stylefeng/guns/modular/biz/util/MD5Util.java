package com.stylefeng.guns.modular.biz.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2015-2016 cadyd.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2017-07-12 9:33 </p>
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
public class MD5Util {
  private static final ThreadLocal<MessageDigest>  sMd5MessageDigest =new ThreadLocal<MessageDigest>(){
    protected MessageDigest initialValue() {
      try {
        return MessageDigest.getInstance("MD5");
      }catch (NoSuchAlgorithmException var){
      }
      return null;
    }
  };

  private static final ThreadLocal<StringBuilder> stringBuilder = new ThreadLocal<StringBuilder>() {
    protected StringBuilder initialValue() {
      return new StringBuilder();
    }
  };



  private MD5Util() {
  }

  public static String md5(String s) {
    sMd5MessageDigest.get().reset();
    sMd5MessageDigest.get().update(s.getBytes());
    byte[] digest = sMd5MessageDigest.get().digest();

    stringBuilder.get().setLength(0);

    for (int i = 0; i < digest.length; ++i) {
      int b = digest[i] & 255;
      if (b < 16) {
        stringBuilder.get().append('0');
      }

      stringBuilder.get().append(Integer.toHexString(b));
    }
    sMd5MessageDigest.remove();
    return stringBuilder.get().toString();
  }
}
