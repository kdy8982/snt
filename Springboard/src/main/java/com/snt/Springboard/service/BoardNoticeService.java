package com.snt.Springboard.service;

import java.util.List;

import com.snt.Springboard.domain.BoardVO;

public interface BoardNoticeService {

	void insertBoardNotice(BoardVO board);

	int updateBoardNotice(BoardVO board);

	int deleteBoardNotice(List<String> board_id);

	BoardVO selectBoardNotice(BoardVO board);
	
}
