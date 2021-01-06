package com.kh.bob.notice.model.service;

import java.util.ArrayList;

import com.kh.bob.notice.model.vo.Attachment;
import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

public interface NoticeService {

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================
	int getListCount();

	ArrayList<Board> noticeList(PageInfo pi);

	int insertNotice(Board b, Attachment attachment);

	Board selectBoard(int bNo);

	Attachment selectAttachment(int bNo);
	
	
	// 민병욱 끝 ====================================================

	

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================
}
