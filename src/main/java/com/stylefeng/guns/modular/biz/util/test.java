package com.stylefeng.guns.modular.biz.util;

import com.xiaoleilu.hutool.http.HttpRequest;

import java.util.UUID;

/**
 * <p>Description: </p>
 * <p>Copyright(c) 2015-2016 cadyd.com Inc. All Rights Reserved.</p>
 * <p>Other: </p>
 * <p>Date：2018-05-04 18:43 </p>
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
public class test {
    public static void main(String[] args) {


        String nonce = UUID.randomUUID().toString();
        String timestamp = System.currentTimeMillis() + "";
        for (int index = 0; index < 100; index++) {
            final int finalIndex = index;
            new Thread(new Runnable() {
                @Override
                public void run() {

                    for (int i = 0; i < 10; i++) {

                        if (i % 2000 == 0) {
                            System.out.println(finalIndex + "--------------" + i);
                        }


                        StringBuffer buffer = new StringBuffer();
                        buffer.append("GET").append("\n");
                        buffer.append("x-ca-nonce:").append(nonce).append("\n");
                        buffer.append("x-ca-timestamp:").append(timestamp).append("\n");
                        buffer.append("/user/homePage");


                        //链式构建请求
                        String result2 = HttpRequest.get("http://192.168.200.223:10020/user/homePage")
                                                    .header("x-ca-nonce", nonce).header("x-ca-timestamp", timestamp)
                                                    .header("x-ca-platform", "h5").header("x-ca-signature",
                                                                                          MD5Util1.toMD5(MD5Util1.toMD5(
                                                                                                  buffer.toString())
                                                                                                         + "$lw1XRJhQ#ys2q"))
                                                    .execute().body();
                        System.err.println(result2);

                    }
                }
            }).start();
        }
    }
}
