package com.example.demo.dto;

import java.sql.Date;

public class RecruitNoticeDto {

	private int recruitNo; //채용공고 번호
	private String recruitType; //채용 유형 (수시, 공채, 혹은null)
	private String recruitObject; //채용 대상( 신입, 경력 혹은 null)
	private String recruitName; //채용공고 이름
	private String recruitScale; //채용 규모 (000명, 혹은 null)
	private Date recruitStartDateTime; //채용 시작일
	private Date recruitEndDateTime; //채용 마감일
	private int recruitHit; //공고 조회수
	private String recruitContent; //공고 내용
	private Date recruitWriteDate; //
	private String recruitFileName;
	
	public int getRecruitHit() {
		return recruitHit;
	}
	public void setRecruitHit(int recruitHit) {
		this.recruitHit = recruitHit;
	}
	public int getRecruitNo() {
		return recruitNo;
	}
	public void setRecruitNo(int recruitNo) {
		this.recruitNo = recruitNo;
	}

	public String getRecruitType() {
		return recruitType;
	}
	public void setRecruitType(String recruitType) {
		this.recruitType = recruitType;
	}
	public String getRecruitObject() {
		return recruitObject;
	}
	public void setRecruitObject(String recruitObject) {
		this.recruitObject = recruitObject;
	}
	public String getRecruitName() {
		return recruitName;
	}
	public void setRecruitName(String recruitName) {
		this.recruitName = recruitName;
	}
	public String getRecruitScale() {
		return recruitScale;
	}
	public void setRecruitScale(String recruitScale) {
		this.recruitScale = recruitScale;
	}
	public Date getRecruitStartDateTime() {
		return recruitStartDateTime;
	}
	public void setRecruitStartDateTime(Date recruitStartDateTime) {
		this.recruitStartDateTime = recruitStartDateTime;
	}
	public Date getRecruitEndDateTime() {
		return recruitEndDateTime;
	}
	public void setRecruitEndDateTime(Date recruitEndDateTime) {
		this.recruitEndDateTime = recruitEndDateTime;
	}
	public String getRecruitContent() {
		return recruitContent;
	}
	public void setRecruitContent(String recruitContent) {
		this.recruitContent = recruitContent;
	}
	public Date getRecruitWriteDate() {
		return recruitWriteDate;
	}
	public void setRecruitWriteDate(Date recruitWriteDate) {
		this.recruitWriteDate = recruitWriteDate;
	}
	public String getRecruitFileName() {
		return recruitFileName;
	}
	public void setRecruitFileName(String recruitFileName) {
		this.recruitFileName = recruitFileName;
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
