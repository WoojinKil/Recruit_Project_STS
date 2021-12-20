package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ApplicantService;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {

	@Autowired
	ApplicantService apService;

	@PostMapping("/deleteApplicantNotFinalApply.do")
	@ResponseBody
	public String deleteApplicantNotFinalApply(@RequestParam Map<String,Object> map) throws Exception{
		try {
		
			apService.deleteApplicantNotFinalApply(map);
			
			String result = "success";
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
		
	}
}
