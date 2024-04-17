package com.gropshop.member.service;

import com.gropshop.member.dto.MemberDto;
import com.gropshop.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    // @RequiredArgsConstructor 어노테이션으로 생성자 주입을 받아야한다.
    private final MemberRepository memberRepository;
    
    // 회원가입    
    public int register(MemberDto memberDto) {
        return memberRepository.register(memberDto);
    }
    
    // 이메일 중복 체크
    public String findId(String userId) {
        MemberDto memberDto = memberRepository.findByUserId(userId);

        if (memberDto == null) {
            return "success";
        } else {
            return "fail";
        }

    }

    public boolean login(MemberDto memberDto) {
        MemberDto loginMember = memberRepository.login(memberDto);

        if (loginMember != null) {
            return true;
        } else {
            return false;
        }
    }
}
