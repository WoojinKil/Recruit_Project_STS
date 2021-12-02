package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.CareerDto;
import com.example.demo.service.CareerService;

@Controller
@RequestMapping("/career")
public class CareerController {

	@Autowired
	CareerService carservice;
	private static final Logger logger = LoggerFactory.getLogger(CareerController.class);

	@PostMapping("addCareer.do")
	@ResponseBody
	public int addActivation(@RequestParam Map<String, Object> map) throws Exception{
	
		logger.info("goto addCareer");
		carservice.addCareer(map);
		int result =1;
		
		return result;
		
	}
	
	@PostMapping("careerList.do")
	@ResponseBody
	public ArrayList<CareerDto> activationList(@RequestParam Map<String, Object> map, Model model) throws Exception{
		logger.info("goto careerList");
		//model attribute 안함
		return carservice.activationList(map);
	}

	
	@PostMapping("careerDelete.do")
	@ResponseBody
	public String activationDelete(@RequestParam Map<String, Object> map) throws Exception{

		carservice.careerDelete(map);
		String result = "success";
		return result;
	}
	
}
