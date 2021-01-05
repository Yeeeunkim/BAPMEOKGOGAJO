package com.kh.bob.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	@Override
	public int getListCount() {
		return nDAO.getListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		return nDAO.selectList(sqlSession, pi);
	}

	@Override
	public int insertBoard(Board board, Attachment attachment) {
		int result = 0;
		// 1. 게시글 추가
		result = nDAO.insertBoard(sqlSession, board);
		
		if(result > 0) {	// 게시글 추가 성공했다면
			if(attachment.getSaveName() != null) {	// 첨부파일이 있다면
				attachment.setbNo(board.getbNo());
				result = nDAO.insertAttachment(sqlSession, attachment);
			}
		} else { 			// 게시글 추가 못했다면
			return 0;
		}
		
		return result;
	}

}
