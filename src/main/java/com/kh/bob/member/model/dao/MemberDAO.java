package com.kh.bob.member.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kh.bob.member.model.vo.Member;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;


@Repository("bmDAO")
public class MemberDAO {
// 김예은 시작 ================================================
	   
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectLogin", m);
	}

	public int memberInsert(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.memberInsert", m);
	}

	public int checkIdDup(SqlSessionTemplate sqlSession, String member_id) {
		return sqlSession.selectOne("memberMapper.checkidDup", member_id);
	}

	public Member infoPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.infoPwd", m);
	}

	public int minfoUpdate(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.minfoUpdate", m);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, String member_id) {
		return sqlSession.update("memberMapper.deleteMember", member_id);
	}

	public Member findId(SqlSessionTemplate sqlSession, Model model) {
		return sqlSession.selectOne("memberMapper.selectId", model);
	}
	
	public Member findPwd(SqlSessionTemplate sqlSession, Model model) {
		return sqlSession.selectOne("memberMapper.selectPwd", model);
	}

	public int pwdUpdate(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberMapper.pwdUpdate", map);
	}

	public int selectSinfo(SqlSessionTemplate sqlSession, ShopInfo si) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.selectSinfo", si);
	}

	public int selectSmenu(SqlSessionTemplate sqlSession, ShopMenu sm) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.selectSmenu", sm);
	}

	public int updatePwd(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.update("memberMapper.updatePwd", map);
	}
	
// 김예은 끝 =================================================


	

}
