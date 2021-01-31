package com.kh.bob;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.common.Pagination;
import com.kh.bob.home.model.exception.HomeException;
import com.kh.bob.home.model.service.HomeService;
import com.kh.bob.home.model.vo.HomeShopList;
import com.kh.bob.notice.model.vo.PageInfo;

@Controller
public class HomeController {
	@Autowired
	private HomeService hService;

	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam(value="page", required=false) Integer page, ModelAndView mv) {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int listCount = hService.getHomeShopListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 8);
		
		ArrayList<HomeShopList> hsList = hService.getHomeShopList(pi);
		
		
		if(hsList != null) {
			mv.addObject("hsList", hsList);
			mv.addObject("pi", pi);
			mv.setViewName("home");
		} else {
			throw new HomeException("홈페이지 조회에 실패했습니다.");
		}
		return mv;
	}
}
