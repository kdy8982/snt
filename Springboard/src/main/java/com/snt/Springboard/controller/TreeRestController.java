package com.snt.Springboard.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.snt.Springboard.domain.TreeVO;
import com.snt.Springboard.service.TreeService;

@RestController
@ResponseBody
public class TreeRestController {
	
	Logger logger = LogManager.getLogger(BoardRestController.class.getName()); // 로그

	@Resource(name = "treeService")
	private TreeService treeService;

	@RequestMapping(value = "/treeList.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public List<TreeVO> selectTreeList(Model model, TreeVO vo) {
		List<TreeVO> tree = (List<TreeVO>) treeService.selectTreeList();
		vo.setDepartment_name("end");
		vo.setEmployee_name("end");
		tree.add(vo);
		return tree;
	}
	
}
