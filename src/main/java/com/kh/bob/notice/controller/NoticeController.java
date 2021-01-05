package com.kh.bob.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.common.Pagination;
import com.kh.bob.notice.model.exception.BoardException;
import com.kh.bob.notice.model.service.NoticeService;
import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

@Controller 
public class NoticeController {
	
	@Autowired
	private NoticeService nService;
	
	//공지사항 뷰(+페이징)
	@RequestMapping("nList.no")
	private ModelAndView noticeList(@RequestParam(value="page", required=false) Integer page,
							  ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = nService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Board> list = nService.selectList(pi);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("noticeList");
		} else {
			throw new BoardException("게시글 전체 조회에 실패했습니다.");
		}
		
		return mv;
	}
	
	// 공지사항 등록 뷰
	@RequestMapping("nInsertForm.no")
	private String noticeInsertView() {
		
		return "noticeInsertForm";
	}
	
	// 공지사항 작성 기능
	@RequestMapping("nInsert.no")
	public String noticeInsert(@ModelAttribute Board b, 
								@RequestParam("uploadFile") MultipartFile uploadFile,
								HttpServletRequest request) {
		return null;
	}

	
	//FAQ
	@RequestMapping("fList.no")
	private String faqList() {
		return "faqList";
	}
	@RequestMapping("fInsertForm.no")
	private String faqInsertView() {
		return "faqInsertForm";
	}
	
	//QnA
	@RequestMapping("qList.no")
	private String qnaList() {
		return "qnaList";
	}
	@RequestMapping("qInsertForm.no")
	private String qnaInsertView() {
		return "qnaInsertForm";
	}
}
