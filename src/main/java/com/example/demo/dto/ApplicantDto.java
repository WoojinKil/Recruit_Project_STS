package com.example.demo.dto;

import java.sql.Date;
import java.util.ArrayList;

public class ApplicantDto {
	private int applicantNo;
	private String applicantId;
	private int recruitNo;
	private int applyNo;
	private ArrayList<CertificateDto> certificates;
	private int finalApplyChecked;
	private Date applyDate;
	
	public int getApplicantNo() {
		return applicantNo;
	}
	public void setApplicantNo(int applicantNo) {
		this.applicantNo = applicantNo;
	}
	public String getApplicantId() {
		return applicantId;
	}
	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}
	public int getRecruitNo() {
		return recruitNo;
	}
	public void setRecruitNo(int recruitNo) {
		this.recruitNo = recruitNo;
	}
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	
	public ArrayList<CertificateDto> getCertificates() {
		return certificates;
	}
	public void setCertificates(ArrayList<CertificateDto> certificates) {
		this.certificates = certificates;
	}
	public int getFinalApplyChecked() {
		return finalApplyChecked;
	}
	public void setFinalApplyChecked(int finalApplyChecked) {
		this.finalApplyChecked = finalApplyChecked;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	@Override
	public String toString() {
		return "ApplicantDto [applicantNo=" + applicantNo + ", applicantId=" + applicantId + ", recruitNo=" + recruitNo
				+ ", applyNo=" + applyNo + ", finalApplyChecked=" + finalApplyChecked + ", applyDate=" + applyDate
				+ "]";
	}
	
	
	
}
