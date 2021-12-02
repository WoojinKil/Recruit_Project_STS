package com.example.demo.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ActivationDto;
import com.example.demo.mapper.ActivationMapper;
import com.example.demo.service.ActivationService;
@Service
public class ActivationServiceImpl implements ActivationService{

	@Autowired
	ActivationMapper actmapper;
	
	@Override
	public void addActivation(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		actmapper.addActivation(map);
	}

	@Override
	public ArrayList<ActivationDto> activationList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return actmapper.activationList(map);

	}

	@Override
	public void activationDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		actmapper.activationDelete(map);
	}

	
}
