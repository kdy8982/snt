package com.snt.Springboard.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.snt.Springboard.dao.MemberDao;
import com.snt.Springboard.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name="memberDao")
	private MemberDao memberDao;
	
	@Override
	public MemberVO selectMember() {
		MemberVO memberVO = memberDao.selectMember();
		return memberVO;
	}


}
