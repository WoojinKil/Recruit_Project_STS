package com.example.demo.dto;

//직무Dto
public class WorkDto {

	private String workNo;
	private String workName;
	
	
	public String getWorkNo() {
		return workNo;
	}
	public void setWorkNo(String workNo) {
		this.workNo = workNo;
	}
	public String getWorkName() {
		return workName;
	}
	public void setWorkName(String workName) {
		this.workName = workName;
	}
	@Override
	public String toString() {
		return "WorkDto [workNo=" + workNo + ", workName=" + workName + "]";
	}
	
	
}
