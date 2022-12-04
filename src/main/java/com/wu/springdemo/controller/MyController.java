package com.wu.springdemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author shirken
 * @describe
 * @date 2022/12/4 5:16 PM
 */
@RestController
public class MyController {
    @RequestMapping("/get")
    @ResponseBody
    public String get(String id){
        System.out.println("id="+id);
        return "ok";
    }
}
