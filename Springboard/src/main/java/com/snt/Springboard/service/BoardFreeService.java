package com.snt.Springboard.service;

import java.util.List;

import com.snt.Springboard.domain.BoardFreeVO;

public interface BoardFreeService {
	
	void insertBoardFree(BoardFreeVO free);

	int updateBoardFree(BoardFreeVO free);

	int deleteBoardFree(List<String> board_id);

	BoardFreeVO selectBoardFree(BoardFreeVO free);
	
}
