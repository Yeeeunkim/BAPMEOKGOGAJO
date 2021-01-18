package com.kh.bob.member.model.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;
<<<<<<< HEAD

=======
>>>>>>> master

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

	int pwdUpdate(String member_pwd);

	int updatePwd(HashMap<String, String> map);







<<<<<<< HEAD
// 김예은 끝 =================================================
=======
	Member loginMember(Member m);

	int memberInsert(Member m);

	Member infoPwd(Member m);

	int checkIdDup(String member_id);

	int minfoUpdate(Member m);

	int deleteMember(String member_id);

	Member findId(Model model);

	Member findPwd(Model model);

	int pwdUpdate(HashMap<String, String> map);

>>>>>>> master
}
