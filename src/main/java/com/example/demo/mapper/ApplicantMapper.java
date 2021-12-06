package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ApplicantDto;
@Mapper
@Repository
public interface ApplicantMapper {

	public ApplicantDto viewApplicant(String memberId, int recruitNo) throws Exception;
	
}
