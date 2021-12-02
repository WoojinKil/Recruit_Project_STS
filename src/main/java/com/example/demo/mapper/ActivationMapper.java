package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ActivationDto;

@Mapper
@Repository
public interface ActivationMapper {
	public void addActivation(Map<String, Object> map) throws Exception;
	public ArrayList<ActivationDto> activationList(Map<String,Object> map) throws Exception;
	public void activationDelete(Map<String, Object> map) throws Exception;
	
	
}
