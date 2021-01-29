package com.kh.bob;

import java.util.Locale;
import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.bob.shop.model.service.ShopService;

/**
 * Handles requests for the application home page.
 * 빈 생성 방법
 * 방법1. 객체 + controller성향을 띄는 
 * 방법2. XML
 */
@Controller
public class HomeController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//	
//	@Autowired
//	private ShopService sService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET) //@RequestMapping : 핸들러 매핑 (요청url과 컨트롤러를 매핑)
//	@RequestMapping(value = "home.do", method = RequestMethod.GET) //@RequestMapping : 핸들러 매핑 (요청url과 컨트롤러를 매핑)
//								ㄴ 위치 지정
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
		
		
		return "home";
		//ModelAndView : 내가보낼 view와 값 같이 보냄
		//컨트롤러가 반환값을 view에 전달
	}
}
