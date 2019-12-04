package com.snt.Springboard.dao;

import com.snt.Springboard.domain.MemberVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {
	MemberVO selectMember() throws Exception;
}
