package com.stylefeng.guns.config;

/**
 * fastjson配置类
 *
 * @author fengshuonan
 * @date 2017-05-23 22:56
 */
//@Configuration
public class FastjsonConfig {

//    @Bean
//    public FastJsonHttpMessageConverter4 fastJsonHttpMessageConverter() {
//        FastJsonHttpMessageConverter4 converter = new FastJsonHttpMessageConverter4();
//        FastJsonConfig fastJsonConfig = new FastJsonConfig();
//        fastJsonConfig.setSerializerFeatures(
//                SerializerFeature.PrettyFormat,
//                SerializerFeature.WriteMapNullValue
//        );
//        fastJsonConfig.setDateFormat("yyyy-MM-dd HH:mm:ss");
//        ValueFilter valueFilter = new ValueFilter() {
//            public Object process(Object o, String s, Object o1) {
//                if (null == o1) {
//                    o1 = "";
//                }
//                return o1;
//            }
//        };
//        fastJsonConfig.setSerializeFilters(valueFilter);
//        converter.setFastJsonConfig(fastJsonConfig);
//        return converter;
//    }

}
