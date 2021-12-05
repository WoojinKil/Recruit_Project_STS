package com.example.demo.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.CertificateDto;

// TODO Auto-generated method stub
	
		


import com.example.demo.dto.ObjectDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;
import com.example.demo.mapper.ApplyMapper;
import com.example.demo.service.ApplyService;
@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ApplyMapper mapper;
	
	
	@Override
	public TypeDto typeView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
	
		
		return mapper.typeView(recruitNo);
	}


	@Override
	public ArrayList<PartDto> partView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.partView(recruitNo);
	}


	@Override
	public ArrayList<WorkDto> workView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.workView(recruitNo);
	}


	@Override
	public ArrayList<ApplyDto> applyView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.applyView(recruitNo);
		
	}


	@Override
	public ArrayList<ObjectDto> objectView(int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.objectView(recruitNo);
	}


	@Override
	public int applyChecked(int recruitNo, String memberId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.applyChecked(recruitNo, memberId);
	}


	@Override
	public void applicantInsert(int recruitNo, String memberId) throws Exception {
		// TODO Auto-generated method stub
		mapper.applicantInsert(recruitNo, memberId);
	}




	@Override
	public void applicantSaveTemp(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		mapper.applicantSaveTemp(map);
	}




	
}
