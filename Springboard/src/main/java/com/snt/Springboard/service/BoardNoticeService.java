package com.snt.Springboard.service;

import java.util.List;

import com.snt.Springboard.domain.BoardNoticeVO;

public interface BoardNoticeService {

	void insertBoardNotice(BoardNoticeVO notice);

	int updateBoardNotice(BoardNoticeVO notice);

	int deleteBoardNotice(List<String> board_id);

	BoardNoticeVO selectBoardNotice(BoardNoticeVO notice);
	
}
