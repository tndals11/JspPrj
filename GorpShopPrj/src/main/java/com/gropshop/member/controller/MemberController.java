package com.gropshop.member.controller;

import com.gropshop.member.dto.MemberDto;
import com.gropshop.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
//@RequestMapping member 공통주소로 묶는다
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

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

    @PostMapping("/register")
    // Ajax를 사용할 때 추가해줘야함
    @ResponseBody
    public String register(@RequestBody MemberDto memberDto) {
        Map<String, Object> map = new HashMap<>();
        int saveResult = memberService.register(memberDto);

        String msg = "";

        if (saveResult > 0) {
            msg = "success";
        } else {
           msg = "fail";
        }
        return msg;
    }

}
