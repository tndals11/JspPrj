package com.GorpShopPrj.gropshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {


    // 메인화면
    @GetMapping("/")
    public String main() {
        return "main";
    }



}
