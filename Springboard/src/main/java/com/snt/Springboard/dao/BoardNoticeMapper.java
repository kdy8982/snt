package com.snt.Springboard.dao;

import java.util.List;

import com.snt.Springboard.domain.BoardNoticeVO;
import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("noticeMapper")
public interface BoardNoticeMapper {
	BoardNoticeVO selectBoardNotice(BoardNoticeVO board);
	
	int insertBoardNotice(BoardVO board);
	
	int updateBoardNotice(BoardVO board);
	
	int deleteBoardNotice(BoardVO board);
	
}
