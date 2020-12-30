package com.kh.bob.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class NoticeController {
	
	//공지사항
	@RequestMapping("nList.no")
	private String noticeList() {
		return "noticeList";
	}
	
	@RequestMapping("nInsertForm.no")
	private String noticeInsertView() {
		return "noticeInsertForm";
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
