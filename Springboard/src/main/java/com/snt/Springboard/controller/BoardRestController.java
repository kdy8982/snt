package com.snt.Springboard.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.domain.TreeVO;
import com.snt.Springboard.service.BoardService;
import com.snt.Springboard.service.TreeService;

@RestController
@ResponseBody
public class BoardRestController {
	Logger logger = LogManager.getLogger(MemberRestController.class.getName()); // 로그

	@Resource(name = "boardService")
	private BoardService boardService;
	
	@Resource(name = "treeService")
	private TreeService treeService;

	@RequestMapping(value = "/boardList.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public Object selectBoardList(ModelMap model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", boardService.selectBoardList());
		Object result = map;
		return result;
	}
	
	@RequestMapping(value = "/boardListSearch.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public Object selectBoardListToSearch(ModelMap model, BoardVO vo) {
		System.out.println("======="+vo.toString());
		System.out.println("======="+vo.getSearch_date1()+","+vo.getSearch_date2());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", boardService.selectBoardListToSearch());
		Object result = map;
		return result;
	}
	
	@RequestMapping(value = "/treeList.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public List<TreeVO> selectTreeList(Model model, TreeVO vo) {
		List<TreeVO> tree = (List<TreeVO>) treeService.selectTreeList();
		return tree;
	}

}
