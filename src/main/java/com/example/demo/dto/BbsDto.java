package com.example.demo.dto;

import java.sql.Date;
import java.sql.Time;

public class BbsDto {

	private int bbsNo;
	private String bbsTitle;
	private String bbsContent;
	private Date bbsWriteDate;
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
	public Date getBbsWriteDate() {
		return bbsWriteDate;
	}
	public void setBbsWriteDate(Date bbsWriteDate) {
		this.bbsWriteDate = bbsWriteDate;
	}
	public int getBbsHit() {
		return bbsHit;
	}
	public void setBbsHit(int bbsHit) {
		this.bbsHit = bbsHit;
	}
	
	
	
}
