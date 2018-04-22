/**
 *
 */
package com.stylefeng.guns.modular.biz.util;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

/**
 * @author wubin E-Mail:wubin3347@gmail.com
 * @version 创建时间：2013-2-4 上午10:58:03
 */
public class PKGenerator {
    private long key;
    private static final PKGenerator instance = new PKGenerator();

    /**
     * 单件模式 使用IP地址最后一段初始化一个主键
     */
    private PKGenerator() {
        try {
            InetAddress ia = InetAddress.getLocalHost();
            // IP地址
            String ip = ia.getHostAddress();
            // IP地址的最后一段
            int lastNum = Integer
                    .parseInt(ip.substring(ip.lastIndexOf(".") + 1));
            makeKey(lastNum);
        } catch (UnknownHostException e) {
            System.err.println("PKGenerator获取IP地址异常!");
            e.printStackTrace();
            throw new RuntimeException("new PKGenerator() Exception!");
        }
    }

    /**
     * 根据种子生成主键
     *
     * @param seed
     */
    private synchronized void makeKey(int seed) {
        // 种子乘以2^48
        long lastTransIP = (long) seed << 48;
        Date date = new Date();
        // 当前时间毫秒数
        long longTime = date.getTime();
        key = longTime | lastTransIP;
    }

    /**
     * 获得一个自身实例
     *
     * @return PKGenerator
     */
    public static PKGenerator getInstance() {
        return instance;
    }

    /**
     * 获取主键
     *
     * @return key + 1
     */
    private synchronized Long getKey() {
        return ++key;
    }

    /**
     * 生成主键
     *
     * @return key
     */
    public Long generateKey() {
        return getKey();
    }

}
