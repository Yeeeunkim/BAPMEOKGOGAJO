package com.kh.bob.member.model.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;


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

<<<<<<< HEAD


	int pwdUpdate(HashMap<String, String> map);
=======
	int pwdUpdate(String member_pwd);

	int updatePwd(HashMap<String, String> map);
>>>>>>> origin/Js







// 김예은 끝 =================================================
}
