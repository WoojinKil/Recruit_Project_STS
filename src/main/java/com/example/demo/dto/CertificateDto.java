package com.example.demo.dto;

import java.sql.Date;

public class CertificateDto {

	private int applicantNo;
	private String certificateName;
	private String certifacateScore;
	private Date certificateDate;
	private String certificateCode;
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
	public String getCertifacateScore() {
		return certifacateScore;
	}
	public void setCertifacateScore(String certifacateScore) {
		this.certifacateScore = certifacateScore;
	}
	public Date getCertificateDate() {
		return certificateDate;
	}
	public void setCertificateDate(Date certificateDate) {
		this.certificateDate = certificateDate;
	}
	public String getCertificateCode() {
		return certificateCode;
	}
	public void setCertificateCode(String certificateCode) {
		this.certificateCode = certificateCode;
	}
	
	
	
	
	
}
