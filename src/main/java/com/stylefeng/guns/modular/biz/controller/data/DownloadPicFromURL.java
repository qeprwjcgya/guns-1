package com.stylefeng.guns.modular.biz.controller.data;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class DownloadPicFromURL {
    public static void main(String[] args) {
        String url = "http://192.168.1.158/estun_cs/banner_img/head_pic.jpg";
        String path="d:/test/pic.jpg";
        downloadPicture(url,path);
    }
    //链接url下载图片
    private static void downloadPicture(String urlList,String path) {
        URL url = null;
        try {
            url = new URL(urlList);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());

            FileOutputStream fileOutputStream = new FileOutputStream(new File(path));
            ByteArrayOutputStream output = new ByteArrayOutputStream();

            byte[] buffer = new byte[1024];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
