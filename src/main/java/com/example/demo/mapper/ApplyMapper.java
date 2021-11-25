package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.TypeDto;
@Mapper
@Repository
public interface ApplyMapper {

	//각 채용공고의 채용유형 불러오기
	public TypeDto typeView(String recruitNo);
	
	
}
