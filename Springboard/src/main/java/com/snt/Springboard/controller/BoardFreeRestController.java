package com.snt.Springboard.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.snt.Springboard.domain.BoardFreeVO;
import com.snt.Springboard.service.BoardFreeService;

@RestController
@ResponseBody
@RequestMapping("/free/")
public class BoardFreeRestController {
	
	Logger logger = LogManager.getLogger(BoardFreeRestController.class.getName()); // 로그

	@Resource(name = "freeService")
	private BoardFreeService freeService;

	@RequestMapping(value="/boardService/selectBoard.do", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public BoardFreeVO selectBoardFree(@RequestBody BoardFreeVO free) {
		logger.info(free.getBoard_id());
		return freeService.selectBoardFree(free);
	}
	
	@RequestMapping(value="/boardService/insertFree.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> insertBoardFree(@RequestBody BoardFreeVO free) {
		System.out.println("인설트 타니");
		freeService.insertBoardFree(free);
		return new ResponseEntity<>("새로운 게시글이 등록되었습니다." , HttpStatus.OK);
	}

	@RequestMapping(value="/boardService/multiDeleteFree.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> deleteBoardFree(@RequestBody List<String> free_board_id) {
		int deleteRowCount = freeService.deleteBoardFree(free_board_id);
		return deleteRowCount >=1 ? new ResponseEntity <String> ("게시글을 성공적으로 삭제하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, value="/boardService/updateBoardFree.do", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> updateBoardFree(@RequestBody BoardFreeVO free) {
		logger.info(free.getBoard_id());
		int updateCount = freeService.updateBoardFree(free);
		logger.info(updateCount);
		return updateCount == 1 ? new ResponseEntity <String> ("게시글을 성공적으로 수정하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

}
