package com.GorpShopPrj.gropshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

    // 로그인
    @GetMapping("/login")
    public String loginForm() {

        return "login";
    }

    // 회원가입
    @GetMapping("/register")
    public String registerForm() {

        return "register";
    }

}
