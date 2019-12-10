package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("noticeDao")
public class BoardNoticeDao extends EgovAbstractDAO {

	public BoardVO selectBoardNotice(BoardVO board) {
		return (BoardVO) select("noticeDao.selectBoardNotice", board);
	}
	
	public void insertBoardNotice(BoardVO board) {
		insert("noticeDao.insertBoardNotice", board);
	}

	public int updateBoardNotice(BoardVO board) {
		return update("noticeDao.updateBoardNotice", board);
	}
	
	public int deleteBoardNotice(BoardVO board) {
		return delete("noticeDao.deleteBoardNotice",board);
	}
	
}