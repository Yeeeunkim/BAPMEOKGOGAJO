package com.kh.bob.member.model.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;

@Service
public interface MemberService {

	Member loginMember(Member m);

	int memberInsert(Member m);

	Member infoPwd(Member m);

	int checkIdDup(String member_id);

	int minfoUpdate(Member m);

	int deleteMember(String member_id);

	Member findId(Model model);

	Member findPwd(Model model);

	int pwdUpdate(HashMap<String, String> map);

}
