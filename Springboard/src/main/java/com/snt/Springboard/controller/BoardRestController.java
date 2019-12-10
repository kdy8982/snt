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
import com.snt.Springboard.service.BoardService;

@RestController
@ResponseBody
public class BoardRestController {
	Logger logger = LogManager.getLogger(BoardRestController.class.getName()); // 로그

	@Resource(name = "boardService")
	private BoardService boardService;

	
	@RequestMapping(value="/boardService/selectBoardCnt.do", method=RequestMethod.POST, produces={MediaType.APPLICATION_JSON_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public int selectBoardCount() {
		int boardTotCnt = boardService.selectBoardListTotCnt();
		logger.info(boardTotCnt);
		return boardTotCnt;
	}
	
	@RequestMapping(value = "/boardList.json", produces = { MediaType.APPLICATION_JSON_VALUE })
	public Object selectBoardList() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", boardService.selectBoardList());
		Object result = map;
		return result;
	}
	
	@RequestMapping(value="/boardService/selectBoard.do", method=RequestMethod.POST, produces= {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public BoardVO selectBoard(@RequestBody BoardVO board) {
		logger.info(board.getBoard_id());
		try {
			boardService.selectBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardService.selectBoard(board);
	}

	@RequestMapping(value="/boardService/insert.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> insertBoard(@RequestBody BoardVO board) {
		boardService.insertBoard(board);
		return new ResponseEntity<>("새로운 게시글이 등록되었습니다." , HttpStatus.OK);
	}
		
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, value="/boardService/updateBoard.do", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> updateBoard(@RequestBody BoardVO board) {
		logger.info(board.getBoard_id());
		int updateCount = boardService.updateBoard(board);
		logger.info(updateCount);
		return updateCount == 1 ? new ResponseEntity <String> ("게시글을 성공적으로 수정하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value="/boardService/multiDelete.do", method=RequestMethod.POST, consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE, "text/plain;charset=UTF-8"})
	@ResponseBody
	public ResponseEntity<String> deleteBoard(@RequestBody List<String> board_id) {
		int deleteRowCount = boardService.deleteBoard(board_id);
		return deleteRowCount >=1 ? new ResponseEntity <String> ("게시글을 성공적으로 삭제하였습니다.", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
