package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;


@Repository("sDAO")
public class ShopDAO {
	
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================
	
	public ShopInfo selectShop(SqlSessionTemplate sqlSession, int sNo) {
		return sqlSession.selectOne("shopMapper.selectShop", sNo);
	}
	
	public ReserveInfo selectReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.selectOne("shopMapper.selectReserve", rNo);
	}
	
	public List selectMenu(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMenu", rNo);
	}
	
	public int successReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.update("shopMapper.successReserve", rNo);
	}

	public List selectSearchList(SqlSessionTemplate sqlSession, ShopInfo shop, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("shopMapper.selectSearchList", shop, rowBounds);
	}
	
	public List selectAddressSearch(SqlSessionTemplate sqlSession, ShopInfo shop, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("shopMapper.selectAddressSearch", shop, rowBounds);
	}
	
	public int getListCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getListCount", shop);
	}
	
	public int getAddressListCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getAddressListCount", shop);
	}
	
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================
	
	public int insertShop(SqlSessionTemplate sqlSession, ShopInfo si) {
		System.out.println("테스트2:"+si);
		return sqlSession.insert("shopMapper.insertShop", si);
	}

	public int insertMenu(SqlSessionTemplate sqlSession, List<ShopMenu> shopmenu) {
		System.out.println("테스트3:"+shopmenu);
		return sqlSession.insert("shopMapper.insertMenu", shopmenu);
	}


	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================
	
	public List<String> getShopList(SqlSessionTemplate sqlSession,String SHOP_CATE, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		List<String> ShopList = sqlSession.selectList("shopMapper.getShopList",SHOP_CATE, rowBounds);
		return ShopList;
	}

	public List<Map<String, Object>> getReservationList(SqlSessionTemplate sqlSession,int shop_no) {
		List<Map<String, Object>> ReservationList = sqlSession.selectList("shopMapper.getReservationList",shop_no);
		return ReservationList;
	}

	

	
	
	

	/*
	 * public void insertShop(SqlSessionTemplate sqlSession,HashMap<String, Object>
	 * data) { sqlSession.insert("shopMapper.insertShop"); }
	 */
	
	
	// 원태원 끝 ======================================================

	

}
