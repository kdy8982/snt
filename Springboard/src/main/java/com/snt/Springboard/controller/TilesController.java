package com.snt.Springboard.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/main")
public class TilesController {
	
	Logger logger =  LogManager.getLogger(TilesController.class.getName()); // 로그

	@RequestMapping(value="/main.do")
	public ModelAndView openTileView(ModelAndView mv) {
		logger.info("call Tiles Controller..!");
		mv.setViewName("/main/main");//타일즈 view => 일반 view
        return mv;
	}
	
	@RequestMapping(value="/expression.do")
	public String expressionMethod(ModelAndView mv) {
		logger.info("call Tiles expression..!!!!!!");
        return "templateExpression/main.layout";
	}
}