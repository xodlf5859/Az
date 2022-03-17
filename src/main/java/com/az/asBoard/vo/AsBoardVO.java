package com.az.asBoard.vo;

import java.util.Date;

public class AsBoardVO {
	

	public AsBoardVO() {}
	
	private int asIdx;
	private String asName;
	private String asPw;
	private String asApt;
	private String asDetail;
	private String asPhone;
	private String asItem;
	private String asStore;
	private Date asDate;
//	private String asDate;
	private String asTitle;
	private String asContent;
	private String asStatus;
	private String asCount;
	
	
	
	
	public Date getAsDate() {
		return asDate;
	}
	public void setAsDate(Date asDate) {
		this.asDate = asDate;
	}
	public String getAsCount() {
		return asCount;
	}
	public void setAsCount(String asCount) {
		this.asCount = asCount;
	}
	public String getAsStatus() {
		return asStatus;
	}
	public void setAsStatus(String asStatus) {
		this.asStatus = asStatus;
	}
	public int getAsIdx() {
		return asIdx;
	}
	public void setAsIdx(int asIdx) {
		this.asIdx = asIdx;
	}
	public String getAsName() {
		return asName;
	}
	public void setAsName(String asName) {
		this.asName = asName;
	}
	public String getAsPw() {
		return asPw;
	}
	public void setAsPw(String asPw) {
		this.asPw = asPw;
	}
	public String getAsApt() {
		return asApt;
	}
	public void setAsApt(String asApt) {
		this.asApt = asApt;
	}
	public String getAsDetail() {
		return asDetail;
	}
	public void setAsDetail(String asDetail) {
		this.asDetail = asDetail;
	}
	public String getAsPhone() {
		return asPhone;
	}
	public void setAsPhone(String asPhone) {
		this.asPhone = asPhone;
	}
	public String getAsItem() {
		return asItem;
	}
	public void setAsItem(String asItem) {
		this.asItem = asItem;
	}
	public String getAsStore() {
		return asStore;
	}
	public void setAsStore(String asStore) {
		this.asStore = asStore;
	}
	public String getAsTitle() {
		return asTitle;
	}
	public void setAsTitle(String asTitle) {
		this.asTitle = asTitle;
	}
	public String getAsContent() {
		return asContent;
	}
	public void setAsContent(String asContent) {
		this.asContent = asContent;
	}
	@Override
	public String toString() {
		return "AsBoardVO [asIdx=" + asIdx + ", asName=" + asName + ", asPw=" + asPw + ", asApt=" + asApt
				+ ", asDetail=" + asDetail + ", asPhone=" + asPhone + ", asItem=" + asItem + ", asStore=" + asStore
				+ ", asDate=" + asDate + ", asTitle=" + asTitle + ", asContent=" + asContent + ", asStatus=" + asStatus
				+ "]";
	}
	
	
	
}
