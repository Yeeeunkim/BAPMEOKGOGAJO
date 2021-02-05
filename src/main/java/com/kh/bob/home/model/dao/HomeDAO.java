
package com.kh.bob.home.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.home.model.vo.HomeShopList;
import com.kh.bob.notice.model.vo.PageInfo;

@Repository("hDAO")
public class HomeDAO {

	public int getHomeShopListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("homeMapper.getHomeShopListCount");
	}

	public ArrayList<HomeShopList> getHomeShopList(PageInfo pi, SqlSessionTemplate sqlSession) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("homeMapper.selectHomeShopList", null, rowBounds);
	}

}
