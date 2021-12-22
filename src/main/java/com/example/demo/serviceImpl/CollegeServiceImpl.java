package com.example.demo.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.CollegeDto;
import com.example.demo.mapper.CollegeMapper;
import com.example.demo.service.CollegeService;
@Service
public class CollegeServiceImpl implements CollegeService {

	@Autowired
	CollegeMapper mapper;
	
	@Override
	public void addCollege(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		mapper.addCollege(map);
	}

	@Override
	public ArrayList<CollegeDto> collegeList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("map의 결과값"+map);
		System.out.println("매퍼에서"+mapper.collegeList(map));
		
		return mapper.collegeList(map);
	}

	@Override
	public void collegeDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub

		mapper.collegeDelete(map);
		
	}


}
