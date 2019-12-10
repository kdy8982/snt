package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.snt.Springboard.domain.BoardFreeVO;
import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("freeDao")
public class BoardFreeDao extends EgovAbstractDAO {

	public BoardFreeVO selectBoardFree(BoardFreeVO free) {
		return (BoardFreeVO) select("freeDao.selectBoardFree", free);
	}
	
	public void insertBoardFree(BoardFreeVO free) {
		System.out.println("dao method");
		insert("freeDao.insertBoardFree", free);
	}

	public int updateBoardFree(BoardFreeVO free) {
		return update("freeDao.updateBoardFree", free);
	}
	
	public int deleteBoardFree(BoardFreeVO free) {
		return delete("freeDao.deleteBoardFree", free);
	}
	
}
