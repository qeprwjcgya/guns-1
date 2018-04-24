package com.stylefeng.guns.modular.biz.util;

import org.springframework.util.Assert;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public abstract class CaptchaUtil {
  // 随机产生的字符串
  private static final String RANDOM_STRS = "23456789abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ";

  private static final String FONT_NAME = "Fixedsys";
  private static final int FONT_SIZE = 18;

  private static final ThreadLocal<Random> random = new ThreadLocal<Random>() {
    protected Random initialValue() {
      return new Random();
    }
  };

  private static int width = 80;// 图片宽
  private static int height = 25;// 图片高
  private static int lineNum = 50;// 干扰线数量

  /**
   * 产生随机字符
   *
   * @param length 字符长度
   * @return
   */
  public static String getRandomCode(int length) {
    Assert.isTrue(length > 0, "randomCode长度须大于零");
    StringBuffer code = new StringBuffer();
    for (int i = 0; i < length; i++) {
      code.append(getRandomString(random.get().nextInt(RANDOM_STRS.length())));
    }
    return code.toString();
  }

  /**
   * 生成随机图片
   *
   * @param randomCode 随机字符串
   * @return
   */
  public static BufferedImage genRandomCodeImage(String randomCode) {
    return genRandomCodeImage(randomCode, 0, 0);
  }

  public static BufferedImage genRandomCodeImage(String randomCode, int _width, int _height) {
    _width = _width < 1 ? width : _width;
    _height = _height < 1 ? height : _height;
    // BufferedImage类是具有缓冲区的Image类
    BufferedImage image = new BufferedImage(_width, _height, BufferedImage.TYPE_INT_BGR);
    // 获取Graphics对象,便于对图像进行各种绘制操作
    Graphics g = image.getGraphics();
    // 设置背景色
    g.setColor(getRandColor(200, 250));
    g.fillRect(0, 0, _width, _height);

    // 设置干扰线的颜色
    g.setColor(getRandColor(110, 120));

    // 绘制干扰线
    for (int i = 0; i <= lineNum; i++) {
      drewLine(g, _width, _height);
    }
    // 绘制随机字符
    int fontSize = _width / randomCode.length();
    g.setFont(new Font(FONT_NAME, Font.BOLD, fontSize));
    for (int i = 0; i < randomCode.length(); i++) {
      drewString(g, i, String.valueOf(randomCode.charAt(i)), fontSize, _height);
    }
    g.dispose();
    return image;
  }

  /**
   * 混淆处理随机字符
   *
   * @param randomCode 不能为空且长度须在十位以内
   * @return 例：如果返回值可能为 HV<b><i>5TMU3</i></b>GLGKBV65KCR3NVJS4QNW3G3CPWA3<b><i>25</i></b> ， <br/>
   * 还原规则，取返回值的倒数第二位为下标index，倒数第一位为截取长度，还原后code = 5TMU3，<br/>
   * 还原code：<br/><pre>{@code
   * String ec = getEncryptRandomCode("5TMU3");
   * int len = Integer.valueOf(ec.substring(ec.length() - 1, ec.length()));
   * int index = Integer.valueOf(ec.substring(ec.length() - 2, ec.length() - 1));
   * System.out.println(ec.substring(index, index + len)); //5TMU3
   * }</pre>
   */
  public static String getEncryptRandomCode(String randomCode) {
    Assert.isTrue(randomCode != null && randomCode.length() < 10, "randomCode不能为空且长度须在十位以内");
    int begin = random.get().nextInt(9) + 1;
    return getRandomCode(begin) + randomCode + getRandomCode(30 - begin) + random.get().nextInt(99999) + begin
           + randomCode.length();
  }

  /**
   * 给定范围获得随机颜色
   */
  private static Color getRandColor(int fc, int bc) {
    if (fc > 255)
      fc = 255;
    if (bc > 255)
      bc = 255;
    int r = fc + random.get().nextInt(bc - fc);
    int g = fc + random.get().nextInt(bc - fc);
    int b = fc + random.get().nextInt(bc - fc);
    return new Color(r, g, b);
  }

  /**
   * 绘制字符串
   */
  private static void drewString(Graphics g, int i, String str, int fontSize, int height) {
    g.setColor(new Color(random.get().nextInt(101), random.get().nextInt(111), random.get().nextInt(121)));
    g.translate(random.get().nextInt(3), random.get().nextInt(3));
    g.drawString(str, fontSize * i, (height / 2) + (fontSize - random.get().nextInt(fontSize) * 2) / 4);
  }

  /**
   * 绘制干扰线
   */
  private static void drewLine(Graphics g, int width, int height) {
    int x = random.get().nextInt(width);
    int y = random.get().nextInt(height);
    int x0 = random.get().nextInt(16);
    int y0 = random.get().nextInt(16);
    g.drawLine(x, y, x + x0, y + y0);
  }

  /**
   * 获取随机的字符
   */
  private static String getRandomString(int num) {
    return String.valueOf(RANDOM_STRS.charAt(num));
  }

  public static void main(String[] args) {
    //    String c = getRandomCode(5);
    //    String ec = getEncryptRandomCode(c);
    //    int len = Integer.valueOf(ec.substring(ec.length() - 1, ec.length()));
    //    int index = Integer.valueOf(ec.substring(ec.length() - 2, ec.length() - 1));
    //    System.out.println(c);
    //    System.out.println(ec);
    //    System.out.println(ec.substring(index, index + len));
    System.out.println(new Random().nextInt(1));
  }
}