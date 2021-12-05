package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.CollegeDto;
@Mapper
@Repository
public interface CollegeMapper {

	public void addCollege(Map<String, Object> map) throws Exception;
	public ArrayList<CollegeDto> collegeList(Map<String, Object> map) throws Exception;
	public void collegeDelete(Map<String, Object> map) throws Exception;
	
}
