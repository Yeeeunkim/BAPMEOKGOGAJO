package com.kh.bob.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;

@Repository("bmDAO")
public class MemberDAO {
// 김예은 시작 ================================================
	   

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectLogin", m);
	}

	public int memberInsert(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.memberInsert", m);
	}

	public Member findId(SqlSessionTemplate sqlSession, Model model) {
		return sqlSession.selectOne("memberMapper.selectId", model);
	}



	
	
// 김예은 끝 =================================================
}
