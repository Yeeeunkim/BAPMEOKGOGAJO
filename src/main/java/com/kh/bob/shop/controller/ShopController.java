package com.kh.bob.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.bob.common.Pagination;
import com.kh.bob.member.model.vo.Member;
import com.kh.bob.shop.exception.ShopException;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

@Controller
public class ShopController {

	@Autowired
	private ShopService sService;

	@RequestMapping("/Reservation.do")
	public String reservationForm() {
		return "/shop/shopReservation";
	}

	@RequestMapping("/shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}

	@RequestMapping("/shop.do")
	public String shopForm() {
		return "/shop/shopList";
	}



	@RequestMapping("reinsertForm.sh")
	public String reviewInsertForm() {
		return "review";
	}

	@RequestMapping("reviewinsert.sh")
	public String reviewInsert(@ModelAttribute ShopReview re, @RequestParam("uploadFile") MultipartFile uploadFile,
			HttpServletRequest request) {
		// Member loginUser = (Member)session.getAttribute("loginUser");
		// String memberId = loginUser.getMemberId();
		String memberId = "user01";
		re.setMemberId(memberId);

		System.out.println(uploadFile);

		if (uploadFile != null && !uploadFile.isEmpty()) { // 첨부파일이 있다면
			String renameFileName = saveFile(uploadFile, request);

			if (renameFileName != null) {
				re.setRenameFilename(renameFileName);
				re.setOriginalFilename(uploadFile.getOriginalFilename());
			}
		}
		System.out.println(re);
		int result = sService.insertReview(re);

		if (result > 0) {
			return "redirect:relist.sh";
		} else {
			throw new ShopException("리뷰 등록에 실패하였습니다.");
		}

	}

	private String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		// 웹 서버 contextPath를 불러와 폴더의 경로 받아옴(webapp 하위의 resources 폴더)
		
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
	
	@RequestMapping("relist.sh")
	public String shopDetail(Model model, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = 1;
		
		if (page != null) {
			currentPage = page;
		}
		
		int shopNo = 1;
		
		int listCount = sService.getReListCount(shopNo);
		
		PageInfo pi = Pagination.getPageinfo(currentPage, listCount);
		
		ArrayList<ShopReview> list = (ArrayList<ShopReview>) sService.selectReList(shopNo, pi);
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			return "shopReservation";
		} else {
			throw new ShopException("리뷰등록을 실패하였습니다.");
		}
	}
	
	@RequestMapping("reDelete.sh")
	public String reviewDelete(@RequestParam("reNo") int reNo) {
		
		int result = sService.deleteReview(reNo);
		
		if(result > 0) {
			return "redirect:relist.sh";
		} else {
			throw new ShopException("리뷰 삭제를 실패하였습니다.");
		}
	}
	
	
	@RequestMapping("rereplyinsert.sh")
	@ResponseBody
	public String rereplyinsert(@RequestParam("textarea") String content, @RequestParam("reid") int reid , HttpSession session) {
	//public String rereplyinsert(@ModelAttribute ReviewReply rere, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		//String memberId = loginUser.getMemberId();
		String memberId = "user01";
		ReviewReply rere = new ReviewReply();
		rere.setMemberId(memberId);
		rere.setReviewNo(reid);
		rere.setReplyContent(content);
		
		System.out.println(rere);
		
		int result = sService.insertReReply(rere);
		
		if(result > 0) {
			return "success";
		} else {
			throw new ShopException("답글 등록에 실패했습니다.");
		}
	}
	
	@RequestMapping("rereplyList.sh")
	public void rereplyList(@RequestParam("reviewNo") int reviewNo,HttpServletResponse response) {
		ArrayList<ReviewReply> rereList = sService.selectReReply(reviewNo);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		try {
			gson.toJson(rereList, response.getWriter());
		} catch (JsonIOException | IOException e) {
			e.printStackTrace();
		}
	}
	

}
