package com.kh.bob.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.bob.shop.model.exception.ShopException;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Controller
public class ShopServlet {
	
	   	   
	   // 신진식 시작 ===================================================
			@Autowired
			private ShopService siService;
	
	
			@RequestMapping("Reservation.do")
			public String reservationForm() {

				return "shop/shopReservation";
			}
			
			
			@RequestMapping("shopEnrollAdd.do")
			public String shopEnrollAdd(@ModelAttribute ShopInfo si, @RequestParam("thumbnailImg")  MultipartFile thumbnailImg, HttpServletRequest request
										,@RequestParam("address1") String address1, @RequestParam("address2") String address2, @RequestParam("MemberId") String MemberId) {
				
				
				String menuname[]=request.getParameterValues("MenuName");
				String menuprice[]=request.getParameterValues("MenuPrice");
				String sidename[]=request.getParameterValues("SideName");
				String sideprice[]=request.getParameterValues("SidePrice");
				String drinkname[]=request.getParameterValues("DrinkName");
				String drinkprice[]=request.getParameterValues("DrinkPrice");
				si.setAddress(address1+"/"+address2);
				
				List<ShopMenu> shopmenu=new ArrayList<ShopMenu>();
				
				for(int i=0; i<menuname.length; i++) {
					System.out.println(menuname[i]+"test1");
					System.out.println(menuprice[i]+"test1");
					shopmenu.add(new ShopMenu(menuname[i],menuprice[i],1));
				}
				for(int i=0; i<sidename.length; i++) {
					System.out.println(sidename[i]+"test2");
					System.out.println(sideprice[i]+"test2");
					shopmenu.add(new ShopMenu(sidename[i],sideprice[i],2));
				}
				for(int i=0; i<drinkname.length; i++) {
					System.out.println(drinkname[i]+"test3");
					System.out.println(drinkprice[i]+"test3");
					shopmenu.add(new ShopMenu(drinkname[i],drinkprice[i],3));
				}

				if(thumbnailImg !=null && !thumbnailImg.isEmpty()) {  
					String renameFileName=saveFile(thumbnailImg, request);
					
					if(renameFileName != null) {
						si.setShopRename(renameFileName);
						si.setShopOrigin(thumbnailImg.getOriginalFilename());

					}
				}
				/*test*/
				
				int shopresult=siService.insertShop(si);
				int menuresult=siService.insertMenu(shopmenu);
				
				System.out.println("잘들어왔는지:" +shopresult+","+menuresult);
				
				if (shopresult > 0  && menuresult>0 ) {
					return "/shop/shopList";
				}else {
					throw new ShopException("게시글 등록에 실패하였습니다.");
				}
				
			}
						

			
		/*파일 서비스*/	
			public String saveFile(MultipartFile file,HttpServletRequest request) {
				String root=request.getSession().getServletContext().getRealPath("resources");
				
				String savePath= root + "\\shopuploadFiles";
										
				
				File folder =new File(savePath);
				if(!folder.exists()) {
					folder.mkdirs();
				}
				
				SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
				String originFileName=file.getOriginalFilename();
				String renameFileName=sdf.format(new Date(System.currentTimeMillis()))+"."+originFileName.substring(originFileName.lastIndexOf(".")+1);
				
				String renamePath=folder+"\\"+renameFileName;
				
				try {
					file.transferTo(new File(renamePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return renameFileName;
			
			}
			
			@RequestMapping("ReviewEnrollForm.do")
			public String ReviewEnrollForm(){
				return "/review/review";
			}
			
			@RequestMapping("DeclareEnrollForm.do")
			public String DeclareEnrollForm() {
				return "/shop/shopDeclareForm";
			}
			
			
			
	   // 신진식 끝 =====================================================

	   
	   // 원태원 시작 ====================================================
	   
	   // 원태원 끝 ======================================================
	
	@RequestMapping("shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}	
	
	
	@RequestMapping("shop.do")
	public String shopForm() {
		return "/shop/shopList";
	}	
	
	
}
