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

import com.example.demo.dto.ActivationDto;
import com.example.demo.service.ActivationService;

@Controller
@RequestMapping("/activation")
public class ActivationController {
	@Autowired
	ActivationService actservice;
	private static final Logger logger = LoggerFactory.getLogger(ActivationController.class);
	

	
	@PostMapping("/addActivation.do")
	@ResponseBody
	public int addActivation(@RequestParam Map<String, Object> map) throws Exception{
	
		logger.info("goto addActivation");
		actservice.addActivation(map);
		int result =1;
		
		return result;
		
	}
	
	@PostMapping("/activationList.do")
	@ResponseBody
	public ArrayList<ActivationDto> activationList(@RequestParam Map<String, Object> map, Model model) throws Exception{
		logger.info("goto activationList");
		//model attribute 안함
		return actservice.activationList(map);
	}

	
	@PostMapping("/activationDelete.do")
	@ResponseBody
	public String activationDelete(@RequestParam Map<String, Object> map) throws Exception{

		actservice.activationDelete(map);
		String result = "success";
		return result;
	}
}
