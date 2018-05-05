package com.stylefeng.guns.modular.biz.util;

import com.google.common.collect.Lists;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

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
    private static final ThreadLocal<MessageDigest> sMd5MessageDigest = new ThreadLocal<MessageDigest>() {
        protected MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException var) {
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

    //  GET
    //*/*
    //application/json
    //x-ca-nonce:39109740-5b3d-4af9-ac3a-d7a269daefdf
    //x-ca-timestamp:1525354192996
    ///lbs/order/getOrdersByStoreID

    //    GET
    //    x-ca-nonce:482e70f1-749c-4aeb-9601-05e599062b03
    //    x-ca-timestamp:1525429202791
    //     /user/homePage


    public static void main(String[] args) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("GET").append("\n");
        //        buffer.append("*/*").append("\n");
        //        buffer.append("application/json").append("\n");
        buffer.append("x-ca-nonce:3b914e19-3d39-476f-b989-2c613e953a80").append("\n");
        buffer.append("x-ca-timestamp:1525431641264").append("\n");
        buffer.append("/user/homePage");

        String str="GET\ntext/html,application/json,text/json,text/javascript,text/plain\napplication/json;charset=UTF-8\nx-ca-nonce:b029891a-2c8d-4151-bbb5-44d051563fbc\nx-ca-timestamp:1525440885000\n/lbs/shopByUserId";
        String value = MD5Util1.toMD5( MD5Util1.toMD5(str)+"$lw1XRJhQ#ys2q");
        System.err.println(value);





        String md5 = MD5Util.md5(buffer.toString());
        System.out.println(md5);

        md5 = MD5Util.md5(md5 + "$lw1XRJhQ#ys2q");
        System.out.println(md5);

        System.err.println(MD5Util1.toMD5(
                "GET\ntext/html,application/json,text/json,text/javascript,text/plain\napplication/json;charset=UTF-8\nx-ca-nonce:7743d10d-8d50-4719-b8b1-f74100368286\nx-ca-timestamp:1525365817000\n/lbs/oss/ossAuthentication"));

        String md5Value = "cf413297429d65a9faa6adeea1443afc";

        List<String> headerPrefixList = Lists.newArrayList();
        headerPrefixList.add("1");
        headerPrefixList.add("2");


//        for (int index = 0; index < 1000; index++) {
//            final int finalIndex = index;
//            new Thread(new Runnable() {
//                @Override
//                public void run() {
//                    Collections.sort(headerPrefixList);
//
//                    for (int i = 0; i < 1000000; i++) {
//
////                        if (i % 2000 == 0) {
////                            System.out.println(finalIndex + "--------------" + i);
////                        }
////                        if (!md5Value.equals(MD5Util1.toMD5(buffer.toString()))) {
////                            System.err.println(false);
////                        }
//                    }
//                }
//            }).start();
//        }

    }
}
