package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.snt.Springboard.controller.BoardRestController;
import com.snt.Springboard.dao.BoardDao;
import com.snt.Springboard.dao.BoardFreeDao;
import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.domain.MemberVO;

@Service("freeService")
public class BoardFreeServiceImpl implements BoardFreeService {
	
	Logger logger = LogManager.getLogger(BoardFreeServiceImpl.class.getName()); // 로그

	@Resource(name="freeDao")
	private BoardFreeDao freeDao;

	@Override
	public BoardVO selectBoardFree(BoardVO board) {
		return freeDao.selectBoardFree(board);
	}
	
	@Override
	public void insertBoardFree(BoardVO board) {
		freeDao.insertBoardFree(board);
	}

	@Override
	public int updateBoardFree(BoardVO board) {
		return freeDao.updateBoardFree(board);
	}
	
	@Override
	public int deleteBoardFree(List<String> board_id) {
		BoardVO board = new BoardVO();
		int deleteRowCnt = 0;
		for(int i=0; i<board_id.size(); i++){
			board.setBoard_id(board_id.get(i));
			deleteRowCnt += freeDao.deleteBoardFree(board);
		}
		return deleteRowCnt;
	}

}
