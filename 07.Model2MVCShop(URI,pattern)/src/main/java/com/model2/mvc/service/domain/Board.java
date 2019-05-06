package com.model2.mvc.service.domain;

public class Board {
	
	private int quesNo;
	private String quesId;
	private String quesTitle;
	private String quesContent;
	private String quesState;
	private String quesDate;
	
	
	// 관리자 답변완료시 추가
	private String okContent;
	
	//상품문의시 필요
	private int prodNo;
	
	
	
	
	
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getQuesDate() {
		return quesDate;
	}
	public void setQuesDate(String quesDate) {
		this.quesDate = quesDate;
	}
	
	
	public String getOkContent() {
		return okContent;
	}
	public void setOkContent(String okContent) {
		this.okContent = okContent;
	}
	public int getQuesNo() {
		return quesNo;
	}
	public void setQuesNo(int quesNo) {
		this.quesNo = quesNo;
	}
	public String getQuesId() {
		return quesId;
	}
	public void setQuesId(String quesId) {
		this.quesId = quesId;
	}
	public String getQuesTitle() {
		return quesTitle;
	}
	public void setQuesTitle(String quesTitle) {
		this.quesTitle = quesTitle;
	}
	public String getQuesContent() {
		return quesContent;
	}
	public void setQuesContent(String quesContent) {
		this.quesContent = quesContent;
	}
	public String getQuesState() {
		return quesState;
	}
	public void setQuesState(String quesState) {
		this.quesState = quesState;
	}
	
	

}
