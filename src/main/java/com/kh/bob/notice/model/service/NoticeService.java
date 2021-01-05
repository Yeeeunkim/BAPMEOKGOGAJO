package com.kh.bob.notice.model.service;

import java.util.ArrayList;

import com.kh.bob.notice.model.vo.Board;
import com.kh.bob.notice.model.vo.PageInfo;

public interface NoticeService {

	int getListCount();

	ArrayList<Board> selectList(PageInfo pi);

}
