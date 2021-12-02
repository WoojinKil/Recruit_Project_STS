package com.example.demo.dto;

public class ActivationDto {

	private int activationRegisterNo;
	private int applicantNo;
	private String activationName;
	private String activationKind;
	private String activationContent;
	private String activationRole;
	private String activationStartDate;
	private String activationEndDate;
	private String activationOrgan;
	public int getActivationRegisterNo() {
		return activationRegisterNo;
	}
	public void setActivationRegisterNo(int activationRegisterNo) {
		this.activationRegisterNo = activationRegisterNo;
	}
	public int getApplicantNo() {
		return applicantNo;
	}
	public void setApplicantNo(int applicantNo) {
		this.applicantNo = applicantNo;
	}
	public String getActivationName() {
		return activationName;
	}
	public void setActivationName(String activationName) {
		this.activationName = activationName;
	}
	public String getActivationKind() {
		return activationKind;
	}
	public void setActivationKind(String activationKind) {
		this.activationKind = activationKind;
	}
	public String getActivationContent() {
		return activationContent;
	}
	public void setActivationContent(String activationContent) {
		this.activationContent = activationContent;
	}
	public String getActivationRole() {
		return activationRole;
	}
	public void setActivationRole(String activationRole) {
		this.activationRole = activationRole;
	}
	public String getActivationStartDate() {
		return activationStartDate;
	}
	public void setActivationStartDate(String activationStartDate) {
		this.activationStartDate = activationStartDate;
	}
	public String getActivationEndDate() {
		return activationEndDate;
	}
	public void setActivationEndDate(String activationEndDate) {
		this.activationEndDate = activationEndDate;
	}
	public String getActivationOrgan() {
		return activationOrgan;
	}
	public void setActivationOrgan(String activationOrgan) {
		this.activationOrgan = activationOrgan;
	}
	@Override
	public String toString() {
		return "ActivationiDto [activationRegisterNo=" + activationRegisterNo + ", applicantNo=" + applicantNo
				+ ", activationName=" + activationName + ", activationKind=" + activationKind + ", activationContent="
				+ activationContent + ", activationRole=" + activationRole + ", activationStartDate="
				+ activationStartDate + ", activationEndDate=" + activationEndDate + ", activationOrgan="
				+ activationOrgan + "]";
	}
	
	
	
	
}
