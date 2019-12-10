package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.snt.Springboard.controller.BoardRestController;
import com.snt.Springboard.dao.BoardDao;
import com.snt.Springboard.dao.BoardNoticeDao;
import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.domain.MemberVO;

@Service("noticeService")
public class BoardNoticeServiceImpl implements BoardNoticeService {

	Logger logger = LogManager.getLogger(BoardNoticeServiceImpl.class.getName()); // 로그

	@Resource(name="noticeDao")
	private BoardNoticeDao noticeDao;
	
	@Override
	public BoardVO selectBoardNotice(BoardVO board) {
		return noticeDao.selectBoardNotice(board);
	}
	
	@Override
	public void insertBoardNotice(BoardVO board) {
		noticeDao.insertBoardNotice(board);
	}

	@Override
	public int updateBoardNotice(BoardVO board) {
		return noticeDao.updateBoardNotice(board);
	}
	
	@Override
	public int deleteBoardNotice(List<String> board_id) {
		BoardVO board = new BoardVO();
		int deleteRowCnt = 0;
		for(int i=0; i<board_id.size(); i++){
			board.setBoard_id(board_id.get(i));
			deleteRowCnt += noticeDao.deleteBoardNotice(board);
		}
		return deleteRowCnt;
	}

}
