package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;

public interface MyApplyService {


	
	public ArrayList<RecruitNoticeDto> myApplyTitleList(String memberId) throws Exception;
	public ArrayList<ApplicantDto> myFinalApplyCheckedList(String memberId) throws Exception;
	public void myDeleteApply(String memberId, int recruitNo) throws Exception;
	
}
