package com.snt.Springboard.controller;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.snt.Springboard.domain.MemberVO;
import com.snt.Springboard.service.MemberService;

@Controller
public class MemberController {
	Logger logger =  LogManager.getLogger(MemberController.class.getName()); // 로그
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping(value="/member.do")
	public String  selectMebmerList( ModelMap model ) {
		MemberVO member = memberService.selectMember();
		model.addAttribute("member", member);
		return "sample/SampleMember";
	}
	
	
}
