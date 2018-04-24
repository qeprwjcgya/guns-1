/*
 * Copyright (c) 2017.  younatianxia.com Inc. All rights reserved.
 */

package com.stylefeng.guns.modular.biz.exception;

public class BusinessException extends RuntimeException {
    private static final long serialVersionUID = 1734207706599046327L;

    private Integer errorCode;

    public BusinessException() {
    }

    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }

    public BusinessException(Throwable cause) {
        super(cause);
    }

    public BusinessException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public BusinessException(Integer errorCode) {
        this.errorCode = errorCode;
    }

    public BusinessException(String message, Integer errorCode) {
        super(message);
        this.errorCode = errorCode;
    }

    public BusinessException(String message, Throwable cause, Integer errorCode) {
        super(message, cause);
        this.errorCode = errorCode;
    }

    public BusinessException(Throwable cause, Integer errorCode) {
        super(cause);
        this.errorCode = errorCode;
    }

    public BusinessException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace,
                             Integer errorCode) {
        super(message, cause, enableSuppression, writableStackTrace);
        this.errorCode = errorCode;
    }

    public static void assertIsTrue(boolean expression, Integer errorCode, String message) {
        if (!expression) {
            throw new BusinessException(message, errorCode);
        }
    }

    public Integer getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
    }
}
