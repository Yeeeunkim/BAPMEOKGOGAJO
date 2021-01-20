﻿package com.kh.bob.member.model.service;

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
	
	@Override
	public Member loginMember(Member m) {
		return bmDAO.loginMember(sqlSession, m);
	}

	@Override
	public int memberInsert(Member m) {
		return bmDAO.memberInsert(sqlSession, m);
	}

	@Override
	public Member infoPwd(Member m) {
		return bmDAO.infoPwd(sqlSession, m);
	}

	//수정해야함
	@Override
	public int checkIdDup(String member_id) {
		return  bmDAO.checkIdDup(sqlSession, member_id);
	}

	@Override
	public int minfoUpdate(Member m) {
		return bmDAO.minfoUpdate(sqlSession, m);
	}

	@Override
	public int deleteMember(String member_id) {
		return bmDAO.deleteMember(sqlSession, member_id);
	}

	@Override
	public Member findId(Model model) {
		return bmDAO.findId(sqlSession, model);
	}
	@Override
	public Member findPwd(Model model) {
		return bmDAO.findPwd(sqlSession, model);
	}

	@Override
	public int pwdUpdate(HashMap<String, String> map) {
		return bmDAO.pwdUpdate(sqlSession, map);
	}

	@Override
	public int selectSinfo(ShopInfo si) {
		return bmDAO.selectSinfo(sqlSession, si);
	}

	@Override
	public int selectSmenu(ShopMenu sm) {
		return bmDAO.selectSmenu(sqlSession, sm);
	}



	

// 김예은 끝 =================================================
}
