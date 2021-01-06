package com.kh.bob.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.bob.member.model.dao.MemberDAO;
import com.kh.bob.member.model.vo.Member;

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
	public Member findId(Model model) {
		// TODO Auto-generated method stub
		return bmDAO.findId(sqlSession, model);
	}

	



	

// 김예은 끝 =================================================
}
