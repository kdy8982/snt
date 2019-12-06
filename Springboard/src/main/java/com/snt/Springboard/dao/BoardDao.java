package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDao")
public class BoardDao extends EgovAbstractDAO {
	public List<?> selectBoardList() {
		// TODO Auto-generated method stub
		return list("boardDao.selectBoardList");
	}

	public int selectBoardListTotCnt() {
		return (int) select("boardDao.selectBoardListTotCnt");
		
	}

	public void insertBoard(BoardVO board) {
		insert("boardDao.insertBoard", board);
		
	}

	public BoardVO selectBoard(BoardVO board) {
		return (BoardVO) select("boardDao.selectBoard", board);
	}
}
