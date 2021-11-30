package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.CertificateDto;
@Mapper
@Repository
public interface CertificateMapper {

	public void addCertificate(Map<String, Object> map) throws Exception;
	public ArrayList<CertificateDto> certificateList (Map<String, Object> map ) throws Exception;
	
}
