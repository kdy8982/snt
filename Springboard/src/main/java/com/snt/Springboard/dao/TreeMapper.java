package com.snt.Springboard.dao;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("treeMapper")
public interface TreeMapper {

	List<?> selectBoardList();
	
}
