package com.model2.mvc.service.product.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Review;
import com.model2.mvc.service.product.ReviewDao;

@Repository("reviewDaoImpl")
public class ReviewDaoImpl implements ReviewDao{
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	

	@Override
	public void addReview(Review review) throws Exception {

		sqlSession.insert("ReviewMapper.addReview", review);
	}

	@Override
	public Review getReview(int reviewNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Review> getReviewList(Map<String,Object> map) throws Exception {
		
		return sqlSession.selectList("ReviewMapper.getReviewList",map);
	}

	@Override
	public void updateReview(Review Review) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotalCount(String prodNo) throws Exception {
		return sqlSession.selectOne("ReviewMapper.getTotalCount",prodNo);
	}
	
	
	
	
}
