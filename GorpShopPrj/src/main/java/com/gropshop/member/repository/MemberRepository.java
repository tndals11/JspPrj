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

    public int register(@RequestBody MemberDto memberDto) {
        // member의 값이 제대로 들어오는지 확인하기 위해서 사용
        System.out.println("================================== Repository");
        // sql문으로 넘겨준다
        return sql.insert("Member.register", memberDto);
    }
}
