package com.model2.mvc.service.board.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.BoardDao;
import com.model2.mvc.service.board.BoardService;
import com.model2.mvc.service.domain.Board;

@Service("questServiceImpl")
public class QuestServiceImpl implements BoardService {

	@Autowired
	@Qualifier("questDaoImpl")
	private BoardDao boardDao;
	
	@Override
	public void addBoard(Board board) throws Exception {

		boardDao.addBoard(board);
	}

	@Override
	public Board getBoard(int quesNo) throws Exception {
		
		return boardDao.getBoard(quesNo);
	}

	@Override
	public Map<String,Object> getBoardList(String prodNo,Search search) throws Exception {

		HashMap<String, Object> map = new HashMap<>();
		map.put("prodNo", prodNo);
		map.put("search",search);
		
		map.put("questlist", boardDao.getBoardList(map));
		map.put("questtotalCount", boardDao.getTotalCount(prodNo));
		
		return map;
	}

	@Override
	public void updateBoard(Board board) throws Exception {
		boardDao.updateBoard(board);
		
	}

	
	
}
