package com.example.demo.dto;

public class MemberDto {

	private String memberName;
	private String memberBirth;
	private String memberId;
	private String memberPw;
	private String memberPwConfirm;
	private String memberRoot;
	private String memberPhoneNumber;
	private int memberIsAdmin;

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberPwConfirm() {
		return memberPwConfirm;
	}

	public void setMemberPwConfirm(String memberPwConfirm) {
		this.memberPwConfirm = memberPwConfirm;
	}

	public String getMemberRoot() {
		return memberRoot;
	}

	public void setMemberRoot(String memberRoot) {
		this.memberRoot = memberRoot;
	}

	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}

	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getMemberIsAdmin() {
		return memberIsAdmin;
	}

	public void setMemberIsAdmin(int memberIsAdmin) {
		this.memberIsAdmin = memberIsAdmin;
	}

//	@Override
//	public String toString() {
//		return "MemberDto [memberName=" + memberName + ", memberBirth=" + memberBirth + ", memberId=" + memberId
//				+ ", memberPw=" + memberPw + ", memberPwConfirm=" + memberPwConfirm + ", memberRoot=" + memberRoot
//				+ ", memberPhoneNumber=" + memberPhoneNumber + "]";
//	}

	

}