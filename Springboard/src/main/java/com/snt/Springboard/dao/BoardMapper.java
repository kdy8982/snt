package com.snt.Springboard.dao;

import java.util.List;

import com.snt.Springboard.domain.BoardVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("boardMapper")
public interface BoardMapper {
	List<?> selectBoardList();
	
	int selectBoardListTotCnt();
}
