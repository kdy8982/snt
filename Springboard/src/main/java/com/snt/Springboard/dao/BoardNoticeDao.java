package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardNoticeVO;
import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("noticeDao")
public class BoardNoticeDao extends EgovAbstractDAO {

	public BoardNoticeVO selectBoardNotice(BoardNoticeVO notice) {
		return (BoardNoticeVO) select("boardNoticeDao.selectBoardNotice", notice);
	}
	
	public void insertBoardNotice(BoardNoticeVO notice) {
		insert("boardNoticeDao.insertBoardNotice", notice);
	}

	public int updateBoardNotice(BoardNoticeVO notice) {
		return update("boardNoticeDao.updateBoardNotice", notice);
	}
	
	public int deleteBoardNotice(BoardNoticeVO notice) {
		return delete("boardNoticeDao.deleteBoardNotice",notice);
	}
	
}