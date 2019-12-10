package com.snt.Springboard.dao;

import java.util.List;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("freeMapper")
public interface BoardFreeMapper {
	
	int insertBoardFree(BoardVO board);
	
	int updateBoardFree(BoardVO board);
	
	int deleteBoardFree(BoardVO board);
	
}
