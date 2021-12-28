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
	public String addActivation(@RequestParam Map<String, Object> map) throws Exception{
	
		try {
			
			actservice.addActivation(map);
			String result ="success";
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}

		
	}
	
	@PostMapping("/activationList.do")
	@ResponseBody
	public ArrayList<ActivationDto> activationList(@RequestParam Map<String, Object> map, Model model) throws Exception{
		try {
			
			//model attribute 안함
			return actservice.activationList(map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}

	}

	
	@PostMapping("/activationDelete.do")
	@ResponseBody
	public String activationDelete(@RequestParam Map<String, Object> map) throws Exception{
		
		try {
			actservice.activationDelete(map);
			String result = "success";
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}


	}
}
