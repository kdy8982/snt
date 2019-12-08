package com.snt.Springboard.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("treeDao")
public class TreeDao extends EgovAbstractDAO {

	public List<?> selectTreeList() {
		return list("treeDao.selectTreeList");
	}
	
}
