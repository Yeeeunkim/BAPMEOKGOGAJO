package com.kh.bob.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.notice.model.vo.Attachment;
import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

@Repository("nDAO")
public class NoticeDAO {
	// 강동기 시작 ===============================================
	
	// 강동기 끝 ================================================

	// 김예은 시작 ================================================
	
	// 김예은 끝 =================================================

	
	// 김하영 시작 ================================================
	
	// 김하영 끝 =================================================

	
	// 민병욱 시작 =================================================
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> noticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("boardMapper.noticeList", null, rowBounds);
	}

	public int insertNotice(SqlSessionTemplate sqlSession, Board board) {
		return sqlSession.insert("boardMapper.insertNotice", board);
	}

	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {
		return sqlSession.insert("boardMapper.insertAttachment", attachment);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", bNo);
	}

	public Attachment selectAttachment(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("boardMapper.selectAttachment", bNo);
	}

	public int deleteNotice(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.update("boardMapper.deleteNotice", bNo);
	}

	public int updateNotice(SqlSessionTemplate sqlSession, Board board) {
		return sqlSession.update("boardMapper.updateNotice", board);
	}

	public int updateAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {
		return sqlSession.update("boardMapper.updateAttachment", attachment);
	}
	
	// 민병욱 끝 ====================================================

	
	
	
	// 신진식 시작 ===================================================
	
	// 신진식 끝 =====================================================

	
	// 원태원 시작 ====================================================
	
	// 원태원 끝 ======================================================

}
