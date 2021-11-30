package com.example.demo.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.CertificateDto;
import com.example.demo.mapper.CertificateMapper;
import com.example.demo.service.ApplicantService;
import com.example.demo.service.CertificateService;
@Service
public class CertificateServiceImpl implements CertificateService {

	@Autowired
	CertificateMapper mapper;
	@Override
	public void addCertificate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		mapper.addCertificate(map);
	}

	@Override
	public ArrayList<CertificateDto> certificateList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.certificateList(map);
	}



}
