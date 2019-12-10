package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDao")
public class BoardDao extends EgovAbstractDAO {
	
	public int selectBoardListTotCnt() {
		return (int) select("boardDao.selectBoardListTotCnt");
	}

	public List<?> selectBoardList() {
		return list("boardDao.selectBoardList");
	}
	
	public BoardVO selectBoard(BoardVO board) {
		return (BoardVO) select("boardDao.selectBoard", board);
	}
	
	public void insertBoard(BoardVO board) {
		insert("boardDao.insertBoard", board);
	}

	public int updateBoard(BoardVO board) {
		return update("boardDao.updateBoard", board);
	}
	
	public int deleteBoard(BoardVO board) {
		return delete("boardDao.deleteBoard",board);
	}
	
}
