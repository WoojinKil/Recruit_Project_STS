package com.example.demo.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ApplicantDto;
@Mapper
@Repository
public interface ApplicantMapper {

	public ApplicantDto viewApplicant(String memberId, int recruitNo) throws Exception;
	public void deleteApplicantNotFinalApply(Map<String, Object> map) throws Exception;
	
}
