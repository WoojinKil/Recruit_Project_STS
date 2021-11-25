package com.example.demo.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.TypeDto;
import com.example.demo.mapper.ApplyMapper;
import com.example.demo.service.ApplyService;
@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ApplyMapper mapper;
	
	
	@Override
	public TypeDto typeView(String recruitNo) throws Exception {
		// TODO Auto-generated method stub
	
		
		return mapper.typeView(recruitNo);
	}

}
