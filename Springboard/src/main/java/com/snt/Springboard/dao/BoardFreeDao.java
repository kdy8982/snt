package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("freeDao")
public class BoardFreeDao extends EgovAbstractDAO {

	public BoardVO selectBoardFree(BoardVO board) {
		return (BoardVO) select("freeDao.selectBoardFree", board);
	}
	
	public void insertBoardFree(BoardVO board) {
		insert("freeDao.insertBoardFree", board);
	}

	public int updateBoardFree(BoardVO board) {
		return update("freeDao.updateBoardFree", board);
	}
	
	public int deleteBoardFree(BoardVO board) {
		return delete("freeDao.deleteBoardFree",board);
	}
	
}
