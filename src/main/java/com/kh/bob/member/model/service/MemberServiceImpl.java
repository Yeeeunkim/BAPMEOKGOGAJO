package com.kh.bob.member.model.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.dao.MemberDAO;
import com.kh.bob.member.model.vo.Member;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Service("bmService")
public class MemberServiceImpl implements MemberService {
// 김예은 시작 ================================================

	@Autowired
	private MemberDAO bmDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//로그인
	@Override
	public Member loginMember(Member m) {
		return bmDAO.loginMember(sqlSession, m);
	}

	//일반 회원가입
	@Override
	public int memberInsert(Member m) {
		return bmDAO.memberInsert(sqlSession, m);
	}

	// 사업자 정보 수정 전 비밀번호 입력
	@Override
	public Member infoPwd(Member m) {
		return bmDAO.infoPwd(sqlSession, m);
	}
	
	// 아이디 중복검사
	@Override
	public int checkIdDup(String member_id) {
		return  bmDAO.checkIdDup(sqlSession, member_id);
	}

	//일반 회원정보 수정 기능 
	@Override
	public int minfoUpdate(Member m) {
		return bmDAO.minfoUpdate(sqlSession, m);
	}
	
	//일반, 사업자 탈퇴
	@Override
	public int deleteMember(String member_id) {
		return bmDAO.deleteMember(sqlSession, member_id);
	}
	
	//아이디 찾기 
	@Override
	public Member findId(Model model) {
		return bmDAO.findId(sqlSession, model);
	}
	
	//비밀번호 찾기
	@Override
	public Member findPwd(Model model) {
		return bmDAO.findPwd(sqlSession, model);
	}
	
	//비밀번호 수정
	@Override
	public int pwdUpdate(HashMap<String, String> map) {
		return bmDAO.pwdUpdate(sqlSession, map);
	}

// 김예은 끝 =================================================
}
