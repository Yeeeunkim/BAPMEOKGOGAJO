package com.kh.bob.member.model.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;


public interface MemberService {
// 김예은 시작 ================================================
	
	Member loginMember(Member m);

	int memberInsert(Member m);

	Member findId(Model model);






// 김예은 끝 =================================================
}
