package com.example.demo.service;

import java.util.ArrayList;
import java.util.Map;

import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;

public interface RecruitNoticeService {

	public ArrayList<RecruitNoticeDto> noticeList() throws Exception;
	public RecruitNoticeDto recruitNoticeView(int recruitNo) throws Exception;
	public void recruitNoticeHitUp(int recruitNo) throws Exception;
	public ArrayList<TypeDto> typeList() throws Exception;
	public ArrayList<RecruitNoticeDto> searchNoticeList(Map<String, Object> map) throws Exception;
	
}
