package com.kh.bob.member.model.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;



public interface MemberService {
// 김예은 시작 ================================================
	
	Member loginMember(Member m);

	int memberInsert(Member m);

	Member findId(Model model);

	int checkIdDup(String member_id);

	Member infoPwd(Member m);

	int minfoUpdate(Member m);

	int deleteMember(String member_id);

	Member findPwd(Model model);

	int pwdUpdate(HashMap<String, String> map);

	int selectSinfo(ShopInfo si);

	int selectSmenu(ShopMenu sm);








// 김예은 끝 =================================================
}
