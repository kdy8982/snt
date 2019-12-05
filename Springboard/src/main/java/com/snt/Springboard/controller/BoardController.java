package com.snt.Springboard.controller;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.snt.Springboard.domain.MemberVO;
import com.snt.Springboard.service.BoardService;
import com.snt.Springboard.service.MemberService;

@Controller
public class BoardController {
	Logger logger =  LogManager.getLogger(BoardController.class.getName()); // 로그
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value="/boardList.do")
	public String  selectBoardList( ModelMap model ) {
		System.out.println( boardService.selectBoardListTotCnt());
		model.addAttribute("boardCount", boardService.selectBoardListTotCnt());
		
		return "sample/Board";
	}
	
	
	
	
}
