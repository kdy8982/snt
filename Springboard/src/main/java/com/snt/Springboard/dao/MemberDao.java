package com.snt.Springboard.dao;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.MemberVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("memberDao")
public class MemberDao extends EgovAbstractDAO {
	
	public MemberVO selectMember() {
		try {
			MemberVO a = (MemberVO) select("memberDao.selectMember");
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		return (MemberVO) select("memberDao.selectMember");

	}
}
