package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
@Mapper
@Repository
public interface RecruitNoticeMapper {

	//리스트 보기
	public ArrayList<RecruitNoticeDto> noticeList()throws Exception;
	//게시글 보기
	public RecruitNoticeDto recruitNoticeView(int recruitNo) throws Exception;
	//조회수 증가
	public void recruitNoticeHitUp(int recruitNo) throws Exception;
	//채용공고 유형 리스트(수시/공채)
	public ArrayList<TypeDto> typeList() throws Exception;
	//공고 검색
	public ArrayList<RecruitNoticeDto> searchNoticeList(Map<String, Object> map) throws Exception;
}
