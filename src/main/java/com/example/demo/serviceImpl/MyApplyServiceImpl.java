package com.example.demo.serviceImpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.mapper.MyApplyMapper;
import com.example.demo.service.MyApplyService;
@Service
public class MyApplyServiceImpl implements MyApplyService {

	
	@Autowired
	MyApplyMapper mapper;
	
	@Override
	public ArrayList<RecruitNoticeDto> myApplyTitleList(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.myApplyTitleList(memberId);
	}


	@Override
	public ArrayList<ApplicantDto> myFinalApplyCheckedList(String memberId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.myFinalApplyCheckedList(memberId);
	}

	@Override
	public void myDeleteApply(String memberId, int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		mapper.myDeleteApply(memberId, recruitNo);
	}

}
