package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.CareerDto;
@Mapper
@Repository
public interface CareerMapper {

	public void addCareer(Map<String, Object> map) throws Exception;
	public ArrayList<CareerDto> careerList(Map<String,Object> map) throws Exception;
	public void careerDelete(Map<String, Object> map) throws Exception;
	
	
}
