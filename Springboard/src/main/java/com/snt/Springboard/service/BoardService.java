package com.snt.Springboard.service;

import java.util.List;

import com.snt.Springboard.domain.BoardVO;

public interface BoardService {
	List<?> selectBoardList();

	int selectBoardListTotCnt();

	void insertBoard(BoardVO board);

	BoardVO selectBoard(BoardVO board);

	int updateBoard(BoardVO board);
	
	int deleteBoard(BoardVO board);

	int deleteBoard(List<String> board_id);
}
