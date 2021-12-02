package com.example.demo.service;

import java.util.ArrayList;
import java.util.Map;

import com.example.demo.dto.CareerDto;

public interface CareerService {

	public void addCareer(Map<String, Object> map) throws Exception;
	public ArrayList<CareerDto> activationList(Map<String, Object> map) throws Exception;
	public void careerDelete(Map<String, Object> map) throws Exception;
	
}
