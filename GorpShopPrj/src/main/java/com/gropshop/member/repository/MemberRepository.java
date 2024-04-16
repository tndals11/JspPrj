package com.gropshop.member.repository;

import com.gropshop.member.dto.MemberDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

@Repository
@RequiredArgsConstructor
public class MemberRepository {

    private final SqlSessionTemplate sql;

    public int register(MemberDto memberDto) {
        // sql문으로 넘겨준다
        return sql.insert("Member.register", memberDto);
    }


    public MemberDto findByUserId(String userId) {
        return sql.selectOne("Member.findByUserId", userId);
    }
}
