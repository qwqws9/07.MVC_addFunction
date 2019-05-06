package com.model2.mvc.service.domain;

public class Review {
	
	private int reviewNo;
	private Product product;
	private String reviewTitle;
	private String reviewContent;
	private String reviewId;
	private String reviewDate;
	private String reviewFile;
	
	
	
	
	public String getReviewFile() {
		return reviewFile;
	}
	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	
	

}
