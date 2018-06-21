package com.enterpriseams.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * Created by caitongbo.
 * Date: 2018/6/20
 * Time: 23:18
 */
@ControllerAdvice
public class GlobalExceptionController {
    @ExceptionHandler
    public String Exception(Exception e){
        return  "error";
    }
}
