package com.model2.mvc.service.product;

import java.util.List;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Review;


public interface ReviewDao {
	
	public void addReview(Review Review) throws Exception;

	public Review getReview(int reviewNo) throws Exception;

	public List<Review> getReviewList(Map<String,Object> map) throws Exception;

	public void updateReview(Review Review) throws Exception;
	
	public int getTotalCount(String prodNo) throws Exception ;
	
}