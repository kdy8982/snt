package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.snt.Springboard.dao.TreeDao;

@Service("treeService")
public class TreeServiceImpl implements TreeService {

	@Resource(name="treeDao")
	private TreeDao treeDao;
	
	@Override
	public List<?> selectTreeList() {
		return treeDao.selectTreeList();
	}
	
}
