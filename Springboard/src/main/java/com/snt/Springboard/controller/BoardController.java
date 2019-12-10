package com.snt.Springboard.controller;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.service.BoardService;

@Controller
public class BoardController {
	
	Logger logger =  LogManager.getLogger(BoardController.class.getName()); // 로그
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value="/boardList.do")
	public String  selectBoardList( ModelMap model ) {
		model.addAttribute("boardCount", boardService.selectBoardListTotCnt());
		return "sample/Board";
	}
	
}
