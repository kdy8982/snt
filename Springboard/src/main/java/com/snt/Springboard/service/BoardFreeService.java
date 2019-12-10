package com.snt.Springboard.service;

import java.util.List;

import com.snt.Springboard.domain.BoardVO;

public interface BoardFreeService {
	
	void insertBoardFree(BoardVO board);

	int updateBoardFree(BoardVO board);

	int deleteBoardFree(List<String> board_id);

	BoardVO selectBoardFree(BoardVO board);
	
}
