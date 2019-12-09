package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.snt.Springboard.controller.BoardRestController;
import com.snt.Springboard.dao.BoardDao;
import com.snt.Springboard.dao.MemberDao;
import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.domain.MemberVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
Logger logger = LogManager.getLogger(BoardServiceImpl.class.getName()); // 로그

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
	public int deleteBoard(List<String> board_id) {
		BoardVO board = new BoardVO();
		int deleteRowCnt = 0;
		for(int i=0; i<board_id.size(); i++){
			board.setBoard_id(board_id.get(i));
			deleteRowCnt += boardDao.deleteBoard(board);
		}
		return deleteRowCnt;
	}


	@Override
	public int deleteBoard(BoardVO board) {
		// TODO Auto-generated method stub
		return 0;
	};

}
