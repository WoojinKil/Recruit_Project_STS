package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.CollegeDto;
import com.example.demo.service.CollegeService;

@Controller
@RequestMapping("/college")

public class CollegeController {
	private static final Logger logger = LoggerFactory.getLogger(CollegeController.class);
	
	@Autowired
	CollegeService colservice;

	@PostMapping("/addCollege.do")
	@ResponseBody
	public String addCollege(@RequestParam Map<String, Object>map) throws Exception{
		
		try {
			colservice.addCollege(map);
			String result = "success";
			
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}

	}
	
	@PostMapping("/collegeList.do")
	@ResponseBody
	public ArrayList<CollegeDto> collegeList(@RequestParam Map<String, Object> map) throws Exception{
		
		
		try {
			
			ArrayList<CollegeDto> data = colservice.collegeList(map);
			
			return data;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	
	@PostMapping("collegeDelete.do")
	@ResponseBody
	public String collegeDelete(@RequestParam Map<String, Object> map)throws Exception{
		try {
			colservice.collegeDelete(map);
			String result ="success";
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}
	}
	
}
