package com.example.demo.dto;

public class ApplyDto {

	private int applyNo;
	private int recruitNo;
	private String partNo;
	private String objectNo;
	private String workNo;
	private String applyContent;
	
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	public int getRecruitNo() {
		return recruitNo;
	}
	public void setRecruitNo(int recruitNo) {
		this.recruitNo = recruitNo;
	}
	public String getPartNo() {
		return partNo;
	}
	public void setPartNo(String partNo) {
		this.partNo = partNo;
	}
	public String getObjectNo() {
		return objectNo;
	}
	public void setObjectNo(String objectNo) {
		this.objectNo = objectNo;
	}
	public String getWorkNo() {
		return workNo;
	}
	public void setWorkNo(String workNo) {
		this.workNo = workNo;
	}
	
	

	public String getApplyContent() {
		return applyContent;
	}
	public void setApplyContent(String applyContent) {
		this.applyContent = applyContent;
	}
	@Override
	public String toString() {
		return "ApplyDto [applyNo=" + applyNo + ", recruitNo=" + recruitNo + ", partNo=" + partNo + ", objectNo="
				+ objectNo + ", workNo=" + workNo + "]";
	}
	
	
	
}
