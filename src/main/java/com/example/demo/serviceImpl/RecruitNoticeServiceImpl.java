package com.example.demo.serviceImpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.mapper.RecruitNoticeMapper;
import com.example.demo.service.RecruitNoticeService;

@Service
public class RecruitNoticeServiceImpl implements RecruitNoticeService {
	
	@Autowired
	private RecruitNoticeMapper mapper;
	
	//리스트
	@Override
	public ArrayList<RecruitNoticeDto> noticeList() throws Exception {
		// TODO Auto-generated method stub

		return mapper.noticeList();
		
	}
	//게시글 보기
	@Override
	public RecruitNoticeDto recruitNoticeView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		
		
		return mapper.recruitNoticeView(recruitNo);
	}
	//조회수 증가
	@Override
	public void recruitNoticeHitUp(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		mapper.recruitNoticeHitUp(recruitNo);
	}
	
	//채용공고 유형 리스트 보기(수시/공채)
	@Override
	public ArrayList<TypeDto> typeList() throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.typeList();
		
	}
	
	
	

}
