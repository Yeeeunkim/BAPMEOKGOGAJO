package com.kh.bob.notice.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.common.Pagination;
import com.kh.bob.notice.model.exception.BoardException;
import com.kh.bob.notice.model.service.NoticeService;
import com.kh.bob.notice.model.vo.Attachment;
import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	// 공지사항 뷰(+페이징)
	@RequestMapping("nList.no")
	private ModelAndView noticeList(@RequestParam(value = "page", required = false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}

		int listCount = nService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Board> list = nService.noticeList(pi);

		if (list != null) {
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
	@Transactional
	@RequestMapping("nInsert.no")
	public String noticeInsert(@ModelAttribute Board board, @RequestParam("uploadFile") MultipartFile uploadFile,
			HttpServletRequest request) {
		Attachment attachment = new Attachment();

		if (uploadFile != null && !uploadFile.isEmpty()) { // 첨부파일이 있다면
			// 리네임
			String renameFileName = saveFile(uploadFile, request);

			if (renameFileName != null) {
				attachment.setSaveName(renameFileName);
				attachment.setOriginName(uploadFile.getOriginalFilename());
			}
		}
		
		// 공지사항 카테고리 == 0
		board.setCateCode(0);
		
		if (board.getbContents().equals("")) { // 공지사항 내용이 없으면
			board.setbContents(" "); // 공백 추가
		}
		
		int result = nService.insertNotice(board, attachment);

		if (result > 0) {
			return "redirect:nList.no";
		} else {
			throw new BoardException("게시글 등록에 실패했습니다.");
		}
	}

	// 첨부파일 리네임 메소드
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 웹 서버 contextPath를 불러와 폴더의 경로를 받아옴(webapp 하위의 resources 폴더)
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\buploadFiles";

		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return renameFileName;
	}
	
	// 공지사항 상세보기 뷰
	@RequestMapping("ndetail.no")
	public ModelAndView nDetail(@RequestParam("bNo") int bNo,
						@RequestParam("page") int page,
						ModelAndView mv) {
		
		// 게시글 조회
		Board board = nService.selectBoard(bNo);
		// 첨부파일 조회
		Attachment attachment = nService.selectAttachment(bNo);
		
		if(board != null) {
			mv.addObject("board", board)
			  .addObject("attachment", attachment)
			  .addObject("page", page)
			  .setViewName("noticeDetail");
		} else {
			throw new BoardException("게시글 상세보기를 실패했습니다.");
		}
		
		
		return mv;
	}
	
	// 공지사항 삭제
	@RequestMapping("ndelete.no")
	public String nDelete(@RequestParam("bNo") int bNo) {
		int result = nService.deleteNotice(bNo);
		
		if(result > 0) {
			return "redirect:nList.no";
		} else {
			throw new BoardException("게시글 삭제를 실패했습니다.");
		}
	}
	
	// 공지사항 수정 뷰
	@RequestMapping("nupview.no")
	public ModelAndView nUpdateView(@RequestParam("bNo") int bNo, 
							@RequestParam("page") int page,
							ModelAndView mv) {
		
		Board board = nService.selectBoard(bNo);
		Attachment attachment = nService.selectAttachment(bNo);
		
		System.out.println(attachment);
		
		mv.addObject("board", board)
		  .addObject("attachment", attachment)
		  .addObject("page", page)
		  .setViewName("noticeUpdateForm");
		
		return mv;
	}
	
	// 공지사항 수정 기능
	@RequestMapping("nupdate.no")
	public ModelAndView nUpdate(@ModelAttribute Board board,
								@ModelAttribute Attachment attachment,
								@RequestParam("reloadFile") MultipartFile reloadFile,
								@RequestParam("page") int page,
								HttpServletRequest request,
								ModelAndView mv) {
		
		if (reloadFile != null && !reloadFile.isEmpty()) { // 새로 변경할 파일이 있다면
			if (attachment.getSaveName() != null) { // 기존에 넣었던 파일이 있다면
				deleteFile(attachment.getSaveName(), request);
			}

			String renameFileName = saveFile(reloadFile, request);

			if (renameFileName != null) {
				attachment.setOriginName(reloadFile.getOriginalFilename());
				attachment.setSaveName(renameFileName);
			}
		}
		
		int result = nService.updateNotice(board, attachment);
		
		if (result > 0) {
			mv.addObject("page", page)
			  .addObject("bNo", board.getbNo())
			  .setViewName("redirect:ndetail.no");
			
			return mv;
		} else {
			throw new BoardException("게시글 수정에 실패했습니다.");
		}
	}
	
	// 기존 첨부파일 삭제 메소드
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) {
			f.delete();
		}
	}
	
	// FAQ
	@RequestMapping("fList.no")
	private String faqList() {
		return "faqList";
	}

	@RequestMapping("fInsertForm.no")
	private String faqInsertView() {
		return "faqInsertForm";
	}

	// QnA
	@RequestMapping("qList.no")
	private String qnaList() {
		return "qnaList";
	}

	@RequestMapping("qInsertForm.no")
	private String qnaInsertView() {
		return "qnaInsertForm";
	}
	

	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================

}
