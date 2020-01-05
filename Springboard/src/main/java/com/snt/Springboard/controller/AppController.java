package com.snt.Springboard.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/app")
public class AppController {

	Logger logger =  LogManager.getLogger(AppController.class.getName()); // 로그
	
    @RequestMapping("/app.do")
    public String app() {
        return "templateExpression/main.layout";
    }
}
