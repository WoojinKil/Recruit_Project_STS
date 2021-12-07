package com.example.demo.dto;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class RecruitNoticeDto {

	private int recruitNo; //채용공고 번호
	private String typeNo; //채용 유형 (수시, 공채, 혹은null)
	private String recruitObject; //채용 대상( 신입, 경력 혹은 null)
	private String recruitName; //채용공고 이름
	private String recruitScale; //채용 규모 (000명, 혹은 null)
	private Timestamp recruitStartDateTime; //채용 시작일
	private Timestamp recruitEndDateTime; //채용 마감일
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

	public String getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(String typeNo) {
		this.typeNo = typeNo;
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
	public Timestamp getRecruitStartDateTime() {
		return recruitStartDateTime;
	}
	public void setRecruitStartDateTime(Timestamp recruitStartDateTime) {
		this.recruitStartDateTime = recruitStartDateTime;
	}
	public Timestamp getRecruitEndDateTime() {
		return recruitEndDateTime;
	}
	public void setRecruitEndDateTime(Timestamp recruitEndDateTime) {
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
