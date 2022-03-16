package com.az.inquiryboard.vo;

import java.util.Date;

public class InquiryVO {
	
	private int inquiry_idx;
	private String inquiry_title;
	private String inquiry_content;
	private String inquiry_name;
	private String inquiry_phone;
	private String inquiry_pw;
	private String inquiry_email;
	private Date inquiry_date;
	
	public Date getInquiry_date() {
		return inquiry_date;
	}

	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}

	public InquiryVO() {
		
	}
	
	public int getInquiry_idx() {
		return inquiry_idx;
	}
	public void setInquiry_idx(int inquiry_idx) {
		this.inquiry_idx = inquiry_idx;
	}
	public String getInquiry_title() {
		return inquiry_title;
	}
	public void setInquiry_title(String inquiry_title) {
		this.inquiry_title = inquiry_title;
	}
	public String getInquiry_content() {
		return inquiry_content;
	}
	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}
	public String getInquiry_name() {
		return inquiry_name;
	}
	public void setInquiry_name(String inquiry_name) {
		this.inquiry_name = inquiry_name;
	}
	public String getInquiry_phone() {
		return inquiry_phone;
	}
	public void setInquiry_phone(String inquiry_phone) {
		this.inquiry_phone = inquiry_phone;
	}
	public String getInquiry_pw() {
		return inquiry_pw;
	}
	public void setInquiry_pw(String inquiry_pw) {
		this.inquiry_pw = inquiry_pw;
	}
	public String getInquiry_email() {
		return inquiry_email;
	}
	public void setInquiry_email(String inquiry_email) {
		this.inquiry_email = inquiry_email;
	}

	@Override
	public String toString() {
		return "InquiryVO [inquiry_idx=" + inquiry_idx + ", inquiry_title=" + inquiry_title + ", inquiry_content="
				+ inquiry_content + ", inquiry_name=" + inquiry_name + ", inquiry_phone=" + inquiry_phone
				+ ", inquiry_pw=" + inquiry_pw + ", inquiry_email=" + inquiry_email + ", inquiry_date=" + inquiry_date
				+ "]";
	}
	
	
	
	
	
}
