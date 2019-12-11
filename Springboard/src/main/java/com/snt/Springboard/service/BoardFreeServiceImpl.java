package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.snt.Springboard.dao.BoardFreeDao;
import com.snt.Springboard.domain.BoardFreeVO;

@Service("freeService")
public class BoardFreeServiceImpl implements BoardFreeService {
	
	Logger logger = LogManager.getLogger(BoardFreeServiceImpl.class.getName()); // 로그

	@Resource(name="freeDao")
	private BoardFreeDao freeDao;

	@Override
	public BoardFreeVO selectBoardFree(BoardFreeVO free) {
		return freeDao.selectBoardFree(free);
	}
	
	@Override
	public void insertBoardFree(BoardFreeVO free) {
		freeDao.insertBoardFree(free);
	}

	@Override
	public int updateBoardFree(BoardFreeVO free) {
		return freeDao.updateBoardFree(free);
	}
	/*
	@Override
	public int deleteBoardFree(List<String> free_board_id) {
		BoardFreeVO free = new BoardFreeVO();
		int deleteRowCnt = 0;
		for(int i=0; i<free_board_id.size(); i++){
			free.setBoard_id(free_board_id.get(i));
			deleteRowCnt += freeDao.deleteBoardFree(free);
		}
		return deleteRowCnt;
	}
	*/
	
	@Override
	public int deleteBoardFree(BoardFreeVO board) {
		return freeDao.deleteBoardFree(board);
	}
}
