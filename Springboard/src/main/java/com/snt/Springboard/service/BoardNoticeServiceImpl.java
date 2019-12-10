package com.snt.Springboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.snt.Springboard.dao.BoardNoticeDao;
import com.snt.Springboard.domain.BoardNoticeVO;

@Service("noticeService")
public class BoardNoticeServiceImpl implements BoardNoticeService {

	Logger logger = LogManager.getLogger(BoardNoticeServiceImpl.class.getName()); // 로그

	@Resource(name="noticeDao")
	private BoardNoticeDao noticeDao;
	
	@Override
	public BoardNoticeVO selectBoardNotice(BoardNoticeVO notice) {
		return noticeDao.selectBoardNotice(notice);
	}
	
	@Override
	public void insertBoardNotice(BoardNoticeVO notice) {
		noticeDao.insertBoardNotice(notice);
	}

	@Override
	public int updateBoardNotice(BoardNoticeVO notice) {
		return noticeDao.updateBoardNotice(notice);
	}
	
	@Override
	public int deleteBoardNotice(List<String> notice_board_id) {
		BoardNoticeVO notice = new BoardNoticeVO();
		int deleteRowCnt = 0;
		for(int i=0; i<notice_board_id.size(); i++){
			notice.setBoard_id(notice_board_id.get(i));
			deleteRowCnt += noticeDao.deleteBoardNotice(notice);
		}
		return deleteRowCnt;
	}

}
