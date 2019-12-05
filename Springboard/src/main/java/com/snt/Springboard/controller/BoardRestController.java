package com.snt.Springboard.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.snt.Springboard.service.BoardService;

@RestController
@ResponseBody
public class BoardRestController {
	Logger logger = LogManager.getLogger(MemberRestController.class.getName()); // 로그

	@Resource(name = "boardService")
	private BoardService boardService;

	@RequestMapping(value = "/boardList.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public Object selectBoardList(ModelMap model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", boardService.selectBoardList());
		Object result = map;
		return result;
	}

}
