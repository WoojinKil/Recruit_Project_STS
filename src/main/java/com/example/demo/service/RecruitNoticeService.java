package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.dto.RecruitNoticeDto;

public interface RecruitNoticeService {

	public ArrayList<RecruitNoticeDto> noticeList() throws Exception;
	public RecruitNoticeDto recruitNoticeView(int recruitNo) throws Exception;
	public void recruitNoticeHitUp(int recruitNo) throws Exception;
	
}
