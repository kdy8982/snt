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
		return boardDao.selectBoardList();
	}


	@Override
	public int selectBoardListTotCnt() {
		return boardDao.selectBoardListTotCnt();
	}


	@Override
	public void insertBoard(BoardVO board) {
		boardDao.insertBoard(board);
	}


	@Override
	public BoardVO selectBoard(BoardVO board) {
		return boardDao.selectBoard(board);
	}


	@Override
	public int updateBoard(BoardVO board) {
		return boardDao.updateBoard(board);
	}
	
	@Override
	public void deleteBoard(BoardVO board) {
		boardDao.deleteBoard(board);
	};

}
