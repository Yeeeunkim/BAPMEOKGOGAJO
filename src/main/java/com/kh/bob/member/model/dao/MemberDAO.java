package com.kh.bob.member.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;

@Repository
public class MemberDAO {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	public int memberInsert(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Member infoPwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	public int checkIdDup(SqlSessionTemplate sqlSession, String member_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int minfoUpdate(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteMember(SqlSessionTemplate sqlSession, String member_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Member findId(SqlSessionTemplate sqlSession, Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	public Member findPwd(SqlSessionTemplate sqlSession, Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	public int pwdUpdate(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return 0;
	}

}
