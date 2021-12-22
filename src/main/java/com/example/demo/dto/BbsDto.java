package com.example.demo.dto;

import java.sql.Date;
import java.sql.Time;

public class BbsDto {

	private int bbsNo;
	private String bbsTitle;
	private String bbsContent;
	private String bbsWriteDate;
	private int bbsHit;
	
	public int getBbsNo() {
		return bbsNo;
	}
	public void setBbsNo(int bbsNo) {
		this.bbsNo = bbsNo;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public String getBbsWriteDate() {
		return bbsWriteDate;
	}
	public void setBbsWriteDate(String bbsWriteDate) {
		this.bbsWriteDate = bbsWriteDate;
	}
	public int getBbsHit() {
		return bbsHit;
	}
	public void setBbsHit(int bbsHit) {
		this.bbsHit = bbsHit;
	}
	@Override
	public String toString() {
		return "BbsDto [bbsNo=" + bbsNo + ", bbsTitle=" + bbsTitle + ", bbsContent=" + bbsContent + ", bbsWriteDate="
				+ bbsWriteDate + ", bbsHit=" + bbsHit + "]";
	}
	public BbsDto(int bbsNo, String bbsTitle, String bbsContent, String bbsWriteDate, int bbsHit) {
		super();
		this.bbsNo = bbsNo;
		this.bbsTitle = bbsTitle;
		this.bbsContent = bbsContent;
		this.bbsWriteDate = bbsWriteDate;
		this.bbsHit = bbsHit;
	}
	public BbsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
