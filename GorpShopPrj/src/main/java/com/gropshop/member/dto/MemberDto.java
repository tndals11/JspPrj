package com.gropshop.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDto {
    private Long code;
    private String userId;
    private String userPw;
    private String userName;
    private String tel1;
    private String tel2;
    private String tel3;
    private String postcode;
    private String address;
    private String detailAddress;
    private String extraAddress;
}
