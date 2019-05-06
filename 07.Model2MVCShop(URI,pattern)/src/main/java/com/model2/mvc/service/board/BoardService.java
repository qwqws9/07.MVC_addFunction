package com.model2.mvc.service.board;

import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Board;

public interface BoardService {
	
	
	public void addBoard(Board board) throws Exception;

	public Board getBoard(int quesNo) throws Exception;

	public Map<String,Object> getBoardList(String userId,Search search) throws Exception;

	public void updateBoard(Board board) throws Exception;

}
