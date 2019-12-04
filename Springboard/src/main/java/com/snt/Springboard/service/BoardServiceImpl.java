package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.snt.Springboard.dao.BoardDao;
import com.snt.Springboard.dao.MemberDao;
import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.domain.MemberVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Resource(name="boardDao")
	private BoardDao boardDao;
	

	@Override
	public List<?> selectBoardList() {
		try {
			boardDao.selectBoardList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardDao.selectBoardList();
	}


}
