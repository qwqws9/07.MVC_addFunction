package com.model2.mvc.service.board;

import java.util.List;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Board;

public interface BoardDao {
	
	public void addBoard(Board board) throws Exception;

	public Board getBoard(int quesNo) throws Exception;

	public List<Board> getBoardList(Map<String,Object> map) throws Exception;

	public void updateBoard(Board board) throws Exception;
	
	public int getTotalCount(String userId) throws Exception ;

}
