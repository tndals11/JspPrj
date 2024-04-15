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

    public int register(MemberDto memberDto) {
        return memberRepository.register(memberDto);
    }
}
