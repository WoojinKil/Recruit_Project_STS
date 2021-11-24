package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.RecruitNoticeDto;
@Mapper
@Repository
public interface RecruitNoticeMapper {

	//리스트 보기
	public ArrayList<RecruitNoticeDto> noticeList()throws Exception;
	//게시글 보기
	public RecruitNoticeDto recruitNoticeView(int recruitNo) throws Exception;
	//조회수 증가
	public void recruitNoticeHitUp(int recruitNo) throws Exception;
}
