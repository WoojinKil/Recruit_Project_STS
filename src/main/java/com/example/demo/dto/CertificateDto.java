package com.example.demo.dto;

import java.sql.Date;

public class CertificateDto {

	private int certificateRegisterNo;
	private int applicantNo;
	private String certificateName;
	private String certificateScore;
	private String certificateDate;
	private String certificateCode;
	
	
	
	
	public int getCertificateRegisterNo() {
		return certificateRegisterNo;
	}
	public void setCertificateRegisterNo(int certificateRegisterNo) {
		this.certificateRegisterNo = certificateRegisterNo;
	}
	public int getApplicantNo() {
		return applicantNo;
	}
	public void setApplicantNo(int applicantNo) {
		this.applicantNo = applicantNo;
	}
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public String getCertificateScore() {
		return certificateScore;
	}
	public void setCertificateScore(String certificateScore) {
		this.certificateScore = certificateScore;
	}
	public String getCertificateDate() {
		return certificateDate;
	}
	public void setCertificateDate(String certificateDate) {
		this.certificateDate = certificateDate;
	}
	public String getCertificateCode() {
		return certificateCode;
	}
	public void setCertificateCode(String certificateCode) {
		this.certificateCode = certificateCode;
	}
	@Override
	public String toString() {
		return "CertificateDto [applicantNo=" + applicantNo + ", certificateName=" + certificateName
				+ ", certificateScore=" + certificateScore + ", certificateDate=" + certificateDate
				+ ", certificateCode=" + certificateCode + "]";
	}
	
	
	
	
	
}
