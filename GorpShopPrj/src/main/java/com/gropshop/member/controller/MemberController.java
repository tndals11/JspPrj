package com.gropshop.member.controller;

import com.gropshop.member.dto.MemberDto;
import com.gropshop.member.service.CoolsmsService;
import com.gropshop.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
//@RequestMapping member 공통주소로 묶는다
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;
    private final CoolsmsService coolsmsService;


    // 로그인
    @GetMapping("/login")
    public String loginForm() {

        return "login";
    }

    // 로그인
    @PostMapping("/login")
    @ResponseBody
    public String login(@RequestBody MemberDto memberDto, HttpSession session, Model model) {
        boolean checkMember = memberService.login(memberDto);

        String msg = "";
        if (checkMember) {
            System.out.println("성공");
            session.setAttribute("loginEmail", memberDto.getUserId());
            msg = "success";
        } else {
            System.out.println("실패");
            msg = "fail";
        }
        return msg;
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
        int saveResult = memberService.register(memberDto);

        String msg = "";
        if (saveResult > 0) {
            msg = "success";
        } else {
           msg = "fail";
        }
        return msg;
    }

    // 이메일 중복체크
    @PostMapping("/checkId")
    @ResponseBody
    public String checkId(@RequestParam String userId) {
        String checkUserId = memberService.findId(userId);
        return checkUserId;
    }

    // 비밀번호 찾기
    @GetMapping("/findPw")
    public String findPw() {

        return "findPw";
    }

    @RequestMapping("/sendSMS1.do")
    @ResponseBody
    public String sendSMS(String phoneNumber) {
        System.out.println(phoneNumber);

        //랜덤 숫자를 생성
        Random ramNum = new Random();
        String numStr = "";
        for ( int i = 0; i < 6; i++) {
            String ran = Integer.toString(ramNum.nextInt(10));
        //문자열로 담아준다
            numStr += ran;
        }
        // api 사용하기 위함
        coolsmsService.certifiedPhoneNumber(phoneNumber,numStr);

        System.out.println(numStr);
        return numStr;
    }
}
