package com.mt.controller;


import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@EnableAutoConfiguration
@RequestMapping("mt")
public class MtController {
    @RequestMapping("show")
    public String queryshow(){
   return "show";

    }
}
