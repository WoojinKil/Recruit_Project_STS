package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;

@Mapper
@Repository
public interface MyApplyMapper {

	public ArrayList<RecruitNoticeDto> myApplyTitleList(String memberId) throws Exception;
	public ArrayList<ApplicantDto> myFinalApplyCheckedList(String memberId) throws Exception;
	void myDeleteApply(String memberId, int recruitNo) throws Exception;
}