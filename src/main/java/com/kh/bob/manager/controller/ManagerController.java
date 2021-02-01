package com.kh.bob.manager.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.common.Pagination;
import com.kh.bob.manager.model.exception.ManagerException;
import com.kh.bob.manager.model.service.ManagerService;
import com.kh.bob.manager.model.vo.CategorySales;
import com.kh.bob.manager.model.vo.DeclationReple;
import com.kh.bob.manager.model.vo.ManageDeclaration;
import com.kh.bob.manager.model.vo.ManageReview;
import com.kh.bob.manager.model.vo.ManageShopInfo;
import com.kh.bob.manager.model.vo.SearchCondition;
import com.kh.bob.manager.model.vo.ShopCategory;
import com.kh.bob.notice.model.vo.PageInfo;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService manService;
	

	@RequestMapping("manager.ma")
	public ModelAndView managerPage(ModelAndView mv) {
		ArrayList<ShopCategory> sc = manService.getShopCategory();
		ArrayList<CategorySales> cs = manService.getCategorySales();
		
		if(sc != null) {
			mv.addObject("cs", cs);
			mv.setViewName("manager");
		} else {
			throw new ManagerException("통계 조회에 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("shopSearch.ma")
	public String shopSearch() {
		return "shopSearch";
	}
	
	@RequestMapping("shopList.ma")
	public ModelAndView shopList(@RequestParam("searchCondition") String condition, @RequestParam("search") String search, @RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		SearchCondition sc = new SearchCondition();
		if(condition.equals("bNumber")) {
			sc.setbNumber(search);
		} else if(condition.equals("sName")) {
			sc.setsName(search);
		} else if(condition.equals("memberId")) {
			sc.setmemberId(search);
		}
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int listCount = manService.getSListCount(sc);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 15);
		
		ArrayList<ManageShopInfo> mSList = manService.selectSList(pi, sc);
		
		if(mSList != null) {
			mv.addObject("mSList", mSList);
			mv.addObject("pi", pi);
			mv.setViewName("shopList");
		} else {
			throw new ManagerException("상점 검색에 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("review.ma")
	public ModelAndView reviewPage(@RequestParam("sNo") Integer sNo, @RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int listCount = manService.getListCount(sNo);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 15);
		
		ArrayList<ManageReview> mRList = manService.selectRList(pi, sNo);
		
		if(mRList != null) {
			mv.addObject("sNo", sNo);
			mv.addObject("mRList", mRList);
			mv.addObject("pi", pi);
			mv.setViewName("review");
		} else {
			throw new ManagerException("리뷰 조회에 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("deleteReview.ma")
	public String reviewDelete(@RequestParam("sNo") Integer sNo, @RequestParam("deleteRNo") Integer[] rNo) {
		int result = manService.deleteReview(rNo);
		if(result > 0) {
			return "redirect:review.ma?sNo=" + sNo;
		} else {
			throw new ManagerException("리뷰 삭제에 실패했습니다.");
		}
		
	}
	
	@RequestMapping("declaration.ma")
	public ModelAndView declaration(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int listCount = manService.getDListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 15);
		
		ArrayList<ManageReview> mDList = manService.selectDList(pi);
		
		if(mDList != null) {
			mv.addObject("mDList", mDList);
			mv.addObject("pi", pi);
			mv.setViewName("declaration");
		} else {
			throw new ManagerException("신고글 조회에 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("declationDetail.ma")
	public ModelAndView declationDetail(@RequestParam("dNo") Integer dNo, ModelAndView mv) {
		ManageDeclaration declationDetail = manService.getDeclationDetail(dNo);
		if(declationDetail != null) {
			if(declationDetail.getdStatus() == 'Y') {
				DeclationReple declationReple = manService.getDeclationReple(declationDetail.getdNo());
				mv.addObject("declationReple", declationReple);
			}
			mv.addObject("declationDetail", declationDetail);
			mv.setViewName("declationDetail");
		} else {
			throw new ManagerException("신고글 상세조회에 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("dRepleInsert.ma")
	public String dRepleInsert(@RequestParam("dNo") Integer dNo, @RequestParam("declationComment") String declationComment) {
		DeclationReple dr = new DeclationReple();
		dr.setdNo(dNo);
		dr.setdRComment(declationComment);
		int result = manService.dRepleInsert(dr);
		if(result > 0) {
			return "redirect:declaration.ma";
		} else {
			throw new ManagerException("신고글 답변에 실패했습니다.");
		}
	}
}
