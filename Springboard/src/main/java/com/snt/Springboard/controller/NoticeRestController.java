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

import com.snt.Springboard.domain.BoardVO;
import com.snt.Springboard.service.BoardNoticeService;

@RestController
@ResponseBody
public class NoticeRestController {
	
	Logger logger = LogManager.getLogger(NoticeRestController.class.getName()); // 로그

	@Resource(name = "noticeService")
	private BoardNoticeService noticeService;

	@RequestMapping(value="/boardService/selectBoardNotice.do", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public BoardVO selectBoardNotice(@RequestBody BoardVO board) {
		logger.info(board.getBoard_id());
		try {
			noticeService.selectBoardNotice(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return noticeService.selectBoardNotice(board);
	}
	
	@RequestMapping(value="/boardService/insertNotice.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> insertBoardNotice(@RequestBody BoardVO board) {
		noticeService.insertBoardNotice(board);
		return new ResponseEntity<>("새로운 게시글이 등록되었습니다." , HttpStatus.OK);
	}
	
	@RequestMapping(value="/boardService/multiDeleteNotice.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> deleteBoardNotice(@RequestBody List<String> board_id) {
		int deleteRowCount = noticeService.deleteBoardNotice(board_id);
		return deleteRowCount >=1 ? new ResponseEntity <String> ("게시글을 성공적으로 삭제하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, value="/boardService/updateBoardNotice.do", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> updateBoardNotice(@RequestBody BoardVO board) {
		logger.info(board.getBoard_id());
		int updateCount = noticeService.updateBoardNotice(board);
		logger.info(updateCount);
		return updateCount == 1 ? new ResponseEntity <String> ("게시글을 성공적으로 수정하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	
}
