package com.model2.mvc.service.product.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Review;
import com.model2.mvc.service.product.ReviewDao;
import com.model2.mvc.service.product.ReviewService;

@Service("reviewServiceImpl")
public class ReviewServiceImpl implements ReviewService{
	
	
	@Autowired
	@Qualifier("reviewDaoImpl")
	private ReviewDao reviewDao;

	@Override
	public void addReview(Review review) throws Exception {
		
		reviewDao.addReview(review);
		
	}

	@Override
	public Review getReview(int reviewNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> getReviewList(Search search,String prodNo) throws Exception {
		HashMap<String, Object> map = new HashMap<>();
		map.put("search", search);
		map.put("prodNo", prodNo);
		System.out.println("?????"+prodNo);
		
		map.put("list", reviewDao.getReviewList(map));
		map.put("totalCount", reviewDao.getTotalCount(prodNo));
		return map;
	}

	@Override
	public void updateReview(Review review) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
