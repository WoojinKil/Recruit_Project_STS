package com.example.demo.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.mapper.ApplicantMapper;
import com.example.demo.service.ApplicantService;
@Service
public class ApplicantServiceImpl implements ApplicantService {

	@Autowired
	ApplicantMapper mapper;
	
	@Override
	public ApplicantDto viewApplicant(String memberId, int recruitNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.viewApplicant(memberId, recruitNo);
		
	}

}
