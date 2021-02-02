package com.kh.bob.member.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.member.model.exception.MemberException;
import com.kh.bob.member.model.service.MemberService;
import com.kh.bob.member.model.vo.Member;
import com.kh.bob.notice.model.vo.Comment;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;



@SessionAttributes("loginUser")

@Controller
public class MemberController {
// 김예은 시작 ================================================


	@Autowired
	private MemberService bmService;

	@Autowired
	private ShopService sService;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;

	// 로그인 페이지
	@RequestMapping("loginView.me")
	public String login(Model model, HttpSession session) {
		return "loginForm";
	}
	
	// 로그인 기능 페이지
	@RequestMapping("login.me")
	public String login(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.loginMember(m);
		System.out.println("loginUser : " + loginUser);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:home.do";
		} else {
			throw new MemberException("로그인에 실패했습니다.");
		}
	}
	// 카카오 로그인
	@RequestMapping("kakaoLogin.me")
	public String kakaoLogin() {
		return "kakoLogin";
	}

	// 로그아웃
	@RequestMapping("logoutView.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:home.do";
	}

	// 아이디찾기 페이지
	@RequestMapping("findFormId.me")
	public String findIdForm() {
		return "findIdForm";
	}

	// 아이디찾기 기능 페이지
	@RequestMapping("findId.me")
	public String findId(@RequestParam("member_name") String member_name, @RequestParam("phone") String phone,
			Model model) {

		model.addAttribute("member_name", member_name);
		model.addAttribute("phone", phone);

		Member findId = bmService.findId(model);

		if (findId != null) {
			model.addAttribute("findId", findId);
			return "findId";
		} else {
			throw new MemberException("아이디 찾기에 실패했습니다.");
		}
	}

	// 비밀번호찾기 페이지
	@RequestMapping("findFormPwd.me")
	public String findPwdForm() {
		return "findPwdForm";
	}

	// 비밀번호찾기 기능 페이지
	@RequestMapping("findPwd.me")
	public String findPwd(@RequestParam String memberId, @RequestParam String email, Model model) {

		model.addAttribute("memberId", memberId);
		model.addAttribute("email", email);

		Member findPwd = bmService.findPwd(model);

		if (findPwd != null) {
			model.addAttribute("findPwd", findPwd);
			return "findPwd";
		} else {
			throw new MemberException("비밀번호 찾기에 실패했습니다.");
		}
	}

	// 회원가입 선택 페이지
	@RequestMapping("enrollForm.me")
	public String enrollForm() {

		return "enrollForm";
	}

	// 회원가입 동의 페이지
	// 버튼에 따라 1(일반회원), 2(사업자회원)으로 임의의 값을 받아서 화면과 같이 넘겨주어 구분 하였습니다
	@RequestMapping("agreeForm.me")
	public ModelAndView agreeForm(@RequestParam("auth_code") String auth_code, ModelAndView mv) {
		mv.addObject("auth_code", auth_code);
		return mv;
	}

	// 일반회원 가입, 사업자 회원가입 페이지
	@RequestMapping("enroll.me")
	public String enroll(@RequestParam("auth_code") String auth_code) {
		if (auth_code.equals("1")) {
			return "memberEnroll";
		} else {
			return "ownerEnroll";
		}

	}

	// 일반 회원가입 기능 페이지
	@RequestMapping("minsert.me")
	public String insertMember(@ModelAttribute Member m, @RequestParam("year") String year,
			@RequestParam("month") String month, @RequestParam("date") String date) {

		m.setMember_birth(year + "/" + month + "/" + date);

		int result = bmService.memberInsert(m);
		System.out.println("m : " + m);
		if (result > 0) {
			return "redirect:home.do";
		} else {
			throw new MemberException("일반 회원가입에 실패했습니다.");
		}
	}

	// 사업자 회원가입 기능 페이지
	@RequestMapping("oinsert.me")
	public String insertOwner(@ModelAttribute Member m, @RequestParam("year") String year,
			@RequestParam("month") String month, @RequestParam("date") String date) {

		m.setMember_birth(year + "/" + month + "/" + date);

		int result = bmService.memberInsert(m);

		if (result > 0) {
			return "redirect:home.do";
		} else {
			throw new MemberException("사업자 회원가입에 실패했습니다.");
		}
	}

	// 아이디 중복검사
	@RequestMapping("dupId.me")
	public void idDuplicateCheck(@RequestParam("memberId") String memberId, HttpServletResponse response) {
		boolean isUsable = bmService.checkIdDup(memberId) == 0 ? true : false;
		System.out.println("isUsable :" + isUsable);

		try {
			response.getWriter().print(isUsable);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 일반 마이페이지
	@RequestMapping("myPage.me")
	public ModelAndView myPageForm( HttpSession session, ModelAndView mv) {
Member loginUser = (Member) session.getAttribute("loginUser");
		
		HashMap<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("memberId", loginUser.getMemberId());
		//paramMap.put("name","이름");
		
		
		//예약 내역
		ReserveInfo rei = sService.selectMyReInfo(loginUser.getMemberId());
		System.out.println("re : " + rei);
		
		//사용자가 예약한 예약내역 조회 
		List<ReserveInfo> re = sService.selectMyrInfo(loginUser.getMemberId());
		
		
		//사용자가 예약한 식당 정보 조회
		List<ShopInfo> sp = sService.selectMyShopPick(rei.getShopNo());
		System.out.println("sp: "  + sp); 
		
		//예약 메뉴
		List<ReserveMenu> reme = sService.selectMyReMenu(rei.getReserveNo());	
		System.out.println("reme : " + reme);
		
		//리뷰
		List<ShopReview> rev = sService.selectMyReview(loginUser.getMemberId());	
		System.out.println("rev : " + rev);
		
		 if(rei != null || sp != null ||  re!= null || !reme.isEmpty() || !rev.isEmpty() ){ 
			 mv.addObject("rei", rei);
			 mv.addObject("re", re);
			 mv.addObject("sp", sp);
			 mv.addObject("reme", reme);
			 mv.addObject("rev", rev);
			 mv.setViewName("myPage");
			 return mv;
		 }else { 
				throw new MemberException("사용자 마이페이지 조회에 실패하였습니다.");
		 }
		 
	}

	@RequestMapping("mPwdUpdate.me")
	public String pwdUpdate() {
		return "updatePwdForm";
	}

	// 비밀번호 변경
	@RequestMapping("updatePwd.me")
	public String pwdUpdate(@RequestParam("member_pwd") String member_pwd,
			@RequestParam("member_newPwd1") String newPwd, HttpSession session) {
		Member m = bmService.loginMember((Member) session.getAttribute("loginUser"));
		Member loginUser = bmService.loginMember(m);

		if (loginUser != null) {

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("memberId", m.getMemberId());
			map.put("newPwd", newPwd);
			int result = bmService.pwdUpdate(map);

			if (result > 0) {
				return "redirect:home.do";
			} else {
				throw new MemberException("비밀번호 수정에 실패하였습니다.");
			}
		} else {
			throw new MemberException("기존 비밀번호 틀렸습니다.");
		}
	}

	@RequestMapping("mInfoPwdForm.me")
	public String mCheckPwdForm() {
		return "checkPwd";
	}

	// 일반 정보 수정 비밀번호 기능 페이지
	@RequestMapping("mInfoPwd.me")
	public String mCheckPwd(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.infoPwd(m);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "updateMemberForm";
		} else {
			throw new MemberException("비밀번호 오류");
		}
	}

	// 일반 회원정보 수정 기능 페이지
	@RequestMapping("mInfoUpdate.me")
	public String minfoUpdate(@ModelAttribute Member m, Model model) {
		int result = bmService.minfoUpdate(m);
		System.out.println(m);
		if (result > 0) {
			model.addAttribute("loginUser", m);
			return "redirect:home.do";
		} else { 
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}

	@RequestMapping(value="shopMypage.me" )
	public ModelAndView shopMyPageForm( HttpSession session, ModelAndView mv) {
		// ★
				// 1. 마이페이지 들어갈 때 사업자 아이디 추출
				Member loginUser = (Member) session.getAttribute("loginUser");
				
				// 2. 추출한 아이디를 이용해 사업자의 식당 정보 가져오기
				ShopInfo si = sService.selectMyShop(loginUser.getMemberId());
				System.out.println(si);
				
				// 3-1. 가져온 식당정보에서 식당번호로 식당 주 메뉴(menu_cate == 1) 리스트에 담기
				List<ShopMenu> sm = sService.selectMyMenu1(si.getShopNo());
				System.out.println(sm);
				
				// 3-2. 가져온 식당정보에서 식당번호로 식당 사이드 메뉴(menu_cate == 2) 리스트에 담기
				List<ShopMenu> sms = sService.selectMyMenu2(si.getShopNo());
				System.out.println(sms);
				
				// 3-3. 가져온 식당정보에서 식당번호로 식당 음료 메뉴(menu_cate == 3) 리스트에 담기
				List<ShopMenu> smb = sService.selectMyMenu3(si.getShopNo());
				System.out.println(smb);
				
				//식당이 예약받은 정보들
				ReserveInfo rinfo = sService.selectRinfo(si.getShopNo());
				System.out.println("rinfo : " + rinfo);
				
				
				//식당이 예약받은 정보들  - 예약인원, 예약 시간 등
				List<ReserveInfo> ri = sService.selectReserveInfo(si.getShopNo());
				System.out.println("ri : " + ri);
				
				//식당이 예약받은 정보들  - 예약메뉴
				List<ReserveMenu> rm = sService.selectReserveMenu(rinfo.getReserveNo());
				System.out.println("rm : " + rm);
				
				if(si != null || !sm.isEmpty() || !sms.isEmpty() || !smb.isEmpty()){ 
					  
					 mv.addObject("si", si);
					 mv.addObject("sm", sm);
					 mv.addObject("sms", sms);
					 mv.addObject("smb", smb);
					 mv.addObject("ri", ri);
					 mv.addObject("rm", rm);
					 mv.setViewName("shopMyPage");
					 return mv;
				 }else { 
					 throw new MemberException("사장님 마이페이지에 실패했습니다."); 
				 }
			}

	//사업자 식당 정보 수정 리스트
	@RequestMapping("shopUpdateForm.me")
	public ModelAndView shopUpateForm(HttpSession session, ModelAndView mv ) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		ShopInfo si = sService.selectMyShop(loginUser.getMemberId());
		
		// 사장님마이페이지 - 메인 
		List<ShopMenu> sm = sService.selectMyMenu1(si.getShopNo());
		
		// 사장님마이페이지 - 사이드
		List<ShopMenu> sms = sService.selectMyMenu2(si.getShopNo());
		
		// 사장님마이페이지 - 음료
		List<ShopMenu> smb = sService.selectMyMenu3(si.getShopNo());

		if(si != null || !sm.isEmpty() || !sms.isEmpty() || !smb.isEmpty()){ 
			  
			 mv.addObject("si", si);
			 mv.addObject("sm", sm);
			 mv.addObject("sms", sms);
			 mv.addObject("smb", smb);
			 mv.setViewName("updateShopInfoForm");
			 return mv;
		 }else { 
			 throw new MemberException("사장님 마이페이지에 실패했습니다."); 
		 }
	}
	
	// 기존 첨부파일 삭제 메소드
		public void deleteFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\shopuploadFiles";
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) {
				f.delete();
			}
		}
	
	//사장님 식당 정보 수정 기능
	@RequestMapping("shopUpdate.me")
	public ModelAndView shopUpdate(@ModelAttribute ShopInfo si, @RequestParam("menuNo") int menuNo, @RequestParam("shopNo") int shopNo,  @RequestParam("thumbnailImg") MultipartFile thumbnailImg, HttpServletRequest request, 
			         HttpSession session, ModelAndView mv){
		
		String menuname[]=request.getParameterValues("MenuName");
		String menuprice[]=request.getParameterValues("MenuPrice");
		String sidename[]=request.getParameterValues("SideName");
		String sideprice[]=request.getParameterValues("SidePrice");
		String drinkname[]=request.getParameterValues("DrinkName");
		String drinkprice[]=request.getParameterValues("DrinkPrice");
				
		List<ShopMenu> shopmenu =new ArrayList<ShopMenu>(si.getShopNo());
		
		for(int i=0; i<menuname.length; i++) {
			System.out.println(menuname[i]+"test1");
			System.out.println(menuprice[i]+"test1");
			shopmenu.add(new ShopMenu( menuname[i],menuprice[i], 1));
		}
		for(int i=0; i<sidename.length; i++) {
			System.out.println(sidename[i]+"test2");
			System.out.println(sideprice[i]+"test2");
			shopmenu.add(new ShopMenu( sidename[i], sideprice[i], 2));
		}
		for(int i=0; i<drinkname.length; i++) {
			System.out.println(drinkname[i]+"test3");
			System.out.println(drinkprice[i]+"test3");
			shopmenu.add(new ShopMenu(drinkname[i],drinkprice[i], 3));
		}
			
			if(thumbnailImg != null && !thumbnailImg.isEmpty()) {//첨부파일이 있다면
				if (si.getShopRename() != null) { // 기존에 넣었던 파일이 있다면
					deleteFile(si.getShopRename(), request);
				}
				String renameFileName = saveFile(thumbnailImg, request);
				
				if(renameFileName != null) {
					si.setShopRename(renameFileName);
					si.setShopOrigin(thumbnailImg.getOriginalFilename());
				}
			}
			
			int siResult = sService.sinfoUpdate(si);
			int smResult = sService.smenuUpdate(shopmenu);
//			int smsResult = sService.sideUpdate(sms);
//			int smbResult = sService.beverUpate(smb);
			
			System.out.println("siUpdate" + si);
			System.out.println("smUpdate" + shopmenu);
//			System.out.println("smsUpdate" + sms);
//			System.out.println("smbUpdate" + smb);
			
		 if(siResult > 0 || smResult > 0 ){ 
			  mv.addObject("si", si);
//			  mv.addObject("shopmenu", shopmenu);
//			  mv.addObject("sms", sms);
//			  mv.addObject("smb", smb);
			  mv.setViewName("redirect:shopMypage.me"); 
		 }else { 
			 throw new MemberException("사장님 마이페이지 수정에 실패했습니다."); 
		 }
		return mv;
	}
	
	//파일 이름 날짜로 수정하는 과정
		public String saveFile(MultipartFile file, HttpServletRequest request) {
		  String root = request.getSession().getServletContext().getRealPath("resources");
		  // 웹 서버 contextPath를 불러와 폴더의 경로 받아온다 (webapp 하위의 resources 폴더)
		  String savePath = root + "\\shopuploadFiles";
		  									//ㄴ 최종목적지
		  //혹시라도 파일 안만들어져있으면 여기로 넣어줘
		  File folder = new File(savePath);
		  if(!folder.exists()) {
			  folder.mkdirs();
		  }
		  
		  //파일 이름 바꾸기 
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		  String originFileName  = file.getOriginalFilename();
		  //확장자 png, jpg이런거 바꾸기 
		  String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
				  			+ "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
		  
		  String renamePath = folder + "\\" + renameFileName;
		  
		  try {
			  file.transferTo(new File(renamePath));
		  } catch (IllegalStateException e) {
			  e.printStackTrace();
		  } catch (IOException e) {
			  e.printStackTrace();
		  }
		  
		  return renameFileName;//d에 파일 저장용도 
		}

	@RequestMapping("oInfoPwdForm.me")
	public String oCheckPwdForm() {
		return "checkShopPwd";
	}

	// 사업자 정보 수정 전 비밀번호 입력 페이지
	@RequestMapping("oInfoPwd.me")
	public String oCheckPwd(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.infoPwd(m);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "updateShopForm";
		} else {
			throw new MemberException("비밀번호 오류");
		}
	}
	
	// 사업자 회원정보 수정 기능 페이지
	@RequestMapping("oInfoUpdate.me")
	public String oinfoUpdate(@ModelAttribute Member m, Model model) {
		int result = bmService.minfoUpdate(m);
		System.out.println(m);
		
		if (result > 0) {
			model.addAttribute("loginUser", m);
			return "redirect:home.do";
		} else {
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}
	
	//일반 회원 탈퇴
	@RequestMapping("mdeleteForm.me")
	public String deleteMemberForm() {
		return "deleteMemberForm";
	}
	
	@RequestMapping("mdelete.me")
	public String deleteMember(@RequestParam("memberId") String memberId, SessionStatus status) {
		int result = bmService.deleteMember(memberId);

		if (result > 0) {
			status.setComplete();
			return "redirect:home.do";
		} else {
			throw new MemberException("일반 회원탈퇴에 실패하였습니다");
		}
	}
	
	//식당 정보 삭제 
	@RequestMapping("deleteShop.me")
	public String deleteShopinfo() {
		return "shopNullPage";
	}
	//사업자  탈퇴
	@RequestMapping("mdeleteShopForm.me")
	public String deleteShopForm() {
		return "deleteShopForm";
	}
	
	@RequestMapping("sdelete.me")
	public String deleteShop(@RequestParam("memberId") String memberId, SessionStatus status) {
		int result = bmService.deleteMember(memberId);

		if (result > 0) {
			status.setComplete();
			return "redirect:home.do";
		} else {
			throw new MemberException("사업자 회원탈퇴에 실패하였습니다");
		}
	}
	
	// 김예은 끝 =================================================
}
