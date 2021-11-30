package com.example.demo.service;

import com.example.demo.dto.ApplicantDto;

public interface ApplicantService {

	public ApplicantDto viewApplicantNo(String memberId, int recruitNo) throws Exception;
}
