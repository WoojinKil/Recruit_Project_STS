package com.example.demo.service;

import java.util.ArrayList;
import java.util.Map;

import com.example.demo.dto.CollegeDto;

public interface CollegeService {

	public void addCollege(Map<String, Object> map ) throws Exception;
	public ArrayList<CollegeDto> collegeList(Map<String,Object> map) throws Exception;
	public void collegeDelete(Map<String,Object> map) throws Exception;
	
}
