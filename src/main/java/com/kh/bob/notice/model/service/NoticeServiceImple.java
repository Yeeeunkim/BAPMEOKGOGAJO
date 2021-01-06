package com.kh.bob.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.bob.notice.model.dao.NoticeDAO;
import com.kh.bob.notice.model.vo.Attachment;
import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

@Service("nService")
public class NoticeServiceImple implements NoticeService {

	@Autowired
	private NoticeDAO nDAO;

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	@Override
	public int getListCount() {
		return nDAO.getListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> noticeList(PageInfo pi) {
		return nDAO.noticeList(sqlSession, pi);
	}

	@Transactional
	@Override
	public int insertNotice(Board board, Attachment attachment) {
		int result = 0;
		// 1. 게시글 추가
		result = nDAO.insertNotice(sqlSession, board);

		if (result > 0) { // 게시글 추가 성공했다면
			if (attachment.getSaveName() != null) { // 첨부파일이 있다면
				attachment.setbNo(board.getbNo());
				result = nDAO.insertAttachment(sqlSession, attachment);
			}
		} else { // 게시글 추가 못했다면
			return 0;
		}

		return result;
	}

	@Override
	public Board selectBoard(int bNo) {
		Board board = null;		
		board = nDAO.selectBoard(sqlSession, bNo);
		return board;
	}

	@Override
	public Attachment selectAttachment(int bNo) {
		Attachment attachment = null;
		attachment = nDAO.selectAttachment(sqlSession, bNo);
		return attachment;
	}

	@Override
	public int deleteNotice(int bNo) {
		return nDAO.deleteNotice(sqlSession, bNo);
	}


	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================

}
