package com.example.demo.service;

import java.util.Map;

import com.example.demo.dto.ApplicantDto;

public interface ApplicantService {

	public ApplicantDto viewApplicant(String memberId, int recruitNo) throws Exception;
	public void deleteApplicantNotFinalApply(Map<String, Object> map) throws Exception;
}
