package com.model2.mvc.service.board.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.board.BoardDao;
import com.model2.mvc.service.domain.Board;
import com.model2.mvc.service.domain.Product;

@Repository("questDaoImpl")
public class QuestDaoImpl implements BoardDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	

	@Override
	public void addBoard(Board board) throws Exception {
		
		sqlSession.insert("QuestMapper.addBoard",board);

	}

	@Override
	public Board getBoard(int quesNo) throws Exception {
		return sqlSession.selectOne("QuestMapper.getBoard",quesNo);
	}

	@Override
	public List<Board> getBoardList(Map<String,Object> map) throws Exception {
		
		return sqlSession.selectList("QuestMapper.getBoardList", map);
	}

	@Override
	public void updateBoard(Board board) throws Exception {
		sqlSession.update("QuestMapper.updateBoard",board);
	}

	@Override
	public int getTotalCount(String prodNo) throws Exception {
		return sqlSession.selectOne("QuestMapper.getTotalCount",prodNo);
	}

	
	
}
