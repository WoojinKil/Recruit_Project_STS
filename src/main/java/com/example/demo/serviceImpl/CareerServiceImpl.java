package com.example.demo.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.CareerDto;
import com.example.demo.mapper.CareerMapper;
import com.example.demo.service.CareerService;
@Service
public class CareerServiceImpl implements CareerService {

	@Autowired
	CareerMapper mapper ;

	@Override
	public void addCareer(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub

		mapper.addCareer(map);
		
	}

	@Override
	public ArrayList<CareerDto> activationList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return mapper.careerList(map);
	}

	@Override
	public void careerDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		mapper.careerDelete(map);
	}

}
