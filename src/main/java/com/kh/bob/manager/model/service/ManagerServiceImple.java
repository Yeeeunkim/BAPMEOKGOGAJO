package com.kh.bob.manager.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.manager.model.dao.ManagerDAO;
import com.kh.bob.manager.model.exception.ManagerException;
import com.kh.bob.manager.model.vo.CategorySales;
import com.kh.bob.manager.model.vo.DeclationReple;
import com.kh.bob.manager.model.vo.ManageDeclaration;
import com.kh.bob.manager.model.vo.ManageReview;
import com.kh.bob.manager.model.vo.ManageShopInfo;
import com.kh.bob.manager.model.vo.SearchCondition;
import com.kh.bob.manager.model.vo.ShopCategory;
import com.kh.bob.notice.model.vo.PageInfo;

@Service("manService")
public class ManagerServiceImple implements ManagerService {
	
	@Autowired
	private ManagerDAO manDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getListCount(int sNo) {
		return manDAO.getListCount(sqlSession, sNo);
	}

	@Override
	public ArrayList<ManageReview> selectRList(PageInfo pi, int sNo) {
		return manDAO.selectRList(sqlSession, pi, sNo);
	}

	@Override
	public int getSListCount(SearchCondition sc) {
		return manDAO.getSListCount(sqlSession, sc);
	}

	@Override
	public ArrayList<ManageShopInfo> selectSList(PageInfo pi, SearchCondition sc) {
		return manDAO.selectSList(sqlSession, pi, sc);
	}

	@Override
	public int deleteReview(Integer[] rNo) {
		return manDAO.deleteReview(sqlSession, rNo);
	}

	@Override
	public int getDListCount() {
		return manDAO.getDListCount(sqlSession);
	}

	@Override
	public ArrayList<ManageReview> selectDList(PageInfo pi) {
		return manDAO.selectDList(sqlSession, pi);
	}

	@Override
	public ManageDeclaration getDeclationDetail(Integer dNo) {
		return manDAO.getDeclationDetail(sqlSession, dNo);
	}

	@Override
	public DeclationReple getDeclationReple(int dNo) {
		return manDAO.getDeclationReple(sqlSession, dNo);
	}

	@Override
	public int dRepleInsert(DeclationReple dr) {
		int result1 = manDAO.dRepleInsert(sqlSession, dr);
		if(result1 > 0) {
			return manDAO.updateDSatus(sqlSession, dr.getdNo());
		} else {
			return 0;
		}
	}

	@Override
	public ArrayList<ShopCategory> getShopCategory() {
		return manDAO.getShopCategory(sqlSession);
	}

	@Override
	public ArrayList<CategorySales> getCategorySales() {
		return manDAO.getCategorySales(sqlSession);
	}

}