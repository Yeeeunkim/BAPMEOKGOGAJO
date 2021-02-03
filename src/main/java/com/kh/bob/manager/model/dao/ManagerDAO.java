package com.kh.bob.manager.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.manager.model.vo.CategorySales;
import com.kh.bob.manager.model.vo.DeclationReple;
import com.kh.bob.manager.model.vo.ManageDeclaration;
import com.kh.bob.manager.model.vo.ManageReview;
import com.kh.bob.manager.model.vo.ManageShopInfo;
import com.kh.bob.manager.model.vo.SearchCondition;
import com.kh.bob.manager.model.vo.ShopCategory;
import com.kh.bob.notice.model.vo.PageInfo;

@Repository("manDAO")
public class ManagerDAO {

	public int getListCount(SqlSessionTemplate sqlSession, int sNo) {
		return sqlSession.selectOne("managerMapper.getListCount", sNo);
	}

	public ArrayList<ManageReview> selectRList(SqlSessionTemplate sqlSession, PageInfo pi, int sNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("managerMapper.selectRList", sNo, rowBounds);
	}

	public int getSListCount(SqlSessionTemplate sqlSession, SearchCondition sc) {
		return sqlSession.selectOne("managerMapper.getSListCount", sc);
	}

	public ArrayList<ManageShopInfo> selectSList(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("managerMapper.selectSList", sc, rowBounds);
	}

	public int deleteReview(SqlSessionTemplate sqlSession, Integer[] rNo) {
		int[] result = new int[rNo.length];
		for (int i=0; i < rNo.length; i++) {
			result[i] = sqlSession.update("managerMapper.deleteReview", rNo[i]);
		}
		for(int r : result) {
			if(r == 0) {
				return 0;
			}
		}
		return 1;
	}

	public int getDListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("managerMapper.getDListCount");
	}

	public ArrayList<ManageReview> selectDList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("managerMapper.selectDList", null, rowBounds);
	}

	public ManageDeclaration getDeclationDetail(SqlSessionTemplate sqlSession, Integer dNo) {
		return sqlSession.selectOne("managerMapper.getDeclationDetail", dNo);
	}

	public DeclationReple getDeclationReple(SqlSessionTemplate sqlSession, int dNo) {
		return sqlSession.selectOne("managerMapper.getDeclationReple", dNo);
	}

	public int dRepleInsert(SqlSessionTemplate sqlSession, DeclationReple dr) {
		return sqlSession.insert("managerMapper.dRepleInsert", dr);
	}

	public int updateDSatus(SqlSessionTemplate sqlSession, int dNo) {
		return sqlSession.update("managerMapper.updateDStatus", dNo);
	}

	public ArrayList<ShopCategory> getShopCategory(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("managerMapper.getShopCategory");
	}

	public ArrayList<CategorySales> getCategorySales(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("managerMapper.getCategorySales");
	}

}