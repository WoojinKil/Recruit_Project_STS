package com.example.demo.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.CertificateDto;
import com.example.demo.dto.MemberDto;
import com.example.demo.service.ApplicantService;
import com.example.demo.service.CertificateService;

@Controller
@RequestMapping("/certificate")
public class CertificateController {
	private static final Logger logger = LoggerFactory.getLogger(CertificateController.class);

	
	@Autowired
	CertificateService cservice;
	@Autowired
	ApplicantService apcntservice;
	
	
	@PostMapping("/addCertificate.do")
	@ResponseBody
	public String addCertificate(@RequestParam Map<String, Object> map) throws Exception {
	

		
		try {
			cservice.addCertificate(map);
			String result = "success";
	
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}

		
	}
	
	@PostMapping("certificateList.do")
	@ResponseBody
	public ArrayList<CertificateDto> certificateList(@RequestParam Map<String, Object> map) throws Exception{
		
		try {
			ArrayList<CertificateDto> cdtos = cservice.certificateList(map);
			return cdtos;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}

		
		

		
		
		
	}
	@PostMapping("certificateDelete.do")
	@ResponseBody
	public String certificateDelete(@RequestParam Map<String,Object> map) throws Exception{
		
		try {
			cservice.certificateDelete(map);
			String result = "success";
			return result;
			
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
		
		
	}

	
}
