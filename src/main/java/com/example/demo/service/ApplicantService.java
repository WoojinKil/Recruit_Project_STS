package com.example.demo.service;

import com.example.demo.dto.ApplicantDto;

public interface ApplicantService {

	public ApplicantDto viewApplicant(String memberId, int recruitNo) throws Exception;
}
