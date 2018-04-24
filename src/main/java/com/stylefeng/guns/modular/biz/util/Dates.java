/*
 * Copyright (c) 2017.  younatianxia.com Inc. All rights reserved.
 */

package com.stylefeng.guns.modular.biz.util;

import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.util.Assert;

/**
 * 日期常量
 *
 * @author <a href="wubin3347@gmail.com">wubin</a>
 * @version 1.0.0, 2017-07-13 14:08
 */
public abstract class Dates {

    public static final String DATE_TIME_FORMATTER_PATTERN = "yyyy-MM-dd HH:mm:ss";

    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormat.forPattern(DATE_TIME_FORMATTER_PATTERN);

    public static final String DATE_TIME_DOC_EXP = "(格式：2017-10-10 10:10:10)";

    public static final String WORK_START_DATE_FORMATTER_PATTERN = "yyyy";

    public static final DateTimeFormatter WORK_START_DATE_FORMATTER = DateTimeFormat.forPattern(WORK_START_DATE_FORMATTER_PATTERN);

    public static final String WORK_START_DATE_DOC_EXP = "(格式：2017)";

    public static final String DATE_FORMATTER_PATTERN = "yyyy-MM-dd";

    public static final DateTimeFormatter DATE_FORMATTER = DateTimeFormat.forPattern(DATE_FORMATTER_PATTERN);

    public static final String DATE_DOC_EXP = "(格式：2017-10-10)";

    public static final String DATE_MINUTE_FORMATTER_PATTERN = "yyyy-MM-dd HH:mm";

    public static final DateTimeFormatter DATE_MINUTE_FORMATTER = DateTimeFormat.forPattern(DATE_MINUTE_FORMATTER_PATTERN);

    public static final String DATE_MINUTE_DOC_EXP = "(格式：2017-10-10 10:10)";

    public static DateTime parse(String src) {
        return parse(src, DATE_TIME_FORMATTER);
    }

    public static DateTime parse(String src, DateTimeFormatter formatter) {
        Assert.hasText(src, "source string is null");
        return DateTime.parse(src, formatter == null ? DATE_TIME_FORMATTER : formatter);
    }

    public static DateTime parse(String src, String formatterPattern) {
        return parse(src,
                     StringUtils.isBlank(formatterPattern) ? DATE_TIME_FORMATTER : DateTimeFormat.forPattern(formatterPattern));
    }
}
