package com.example.demo.service;

import java.util.ArrayList;
import java.util.Map;

import com.example.demo.dto.CertificateDto;

public interface CertificateService {

	public void addCertificate(Map<String, Object> map) throws Exception;
	public ArrayList<CertificateDto> certificateList(Map<String, Object> map) throws Exception;
	public void certificateDelete(Map<String, Object> map) throws Exception;
	

}
