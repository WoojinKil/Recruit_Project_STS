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
	public String addActivation(@RequestParam Map<String, Object> map) throws Exception{
	
		try {
			
			carservice.addCareer(map);
			String result = "success";
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}

		
	}
	
	@PostMapping("careerList.do")
	@ResponseBody
	public ArrayList<CareerDto> activationList(@RequestParam Map<String, Object> map) throws Exception{
		try {
			
			//model attribute 안함
			return carservice.activationList(map);
		} catch (Exception e) {
			
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}

	}

	
	@PostMapping("careerDelete.do")
	@ResponseBody
	public String activationDelete(@RequestParam Map<String, Object> map) throws Exception{

		try {
			carservice.careerDelete(map);
			String result = "success";
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
			
		}

	}
	
}
