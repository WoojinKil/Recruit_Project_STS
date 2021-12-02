package com.example.demo.service;

import java.util.ArrayList;
import java.util.Map;

import com.example.demo.dto.ActivationDto;

public interface ActivationService {

	public void addActivation(Map<String, Object> map) throws Exception;
	public ArrayList<ActivationDto> activationList(Map<String, Object> map) throws Exception;
	public void activationDelete(Map<String, Object> map) throws Exception;
	
}
