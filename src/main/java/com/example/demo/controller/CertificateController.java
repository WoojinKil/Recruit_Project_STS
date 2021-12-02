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
	public int addCertificate(@RequestParam Map<String, Object> map, HttpSession session) throws Exception {
	
		logger.info("addCertificate");
		MemberDto dto = (MemberDto) session.getAttribute("member");
		logger.info("session complete"+dto);
		
		String memberId = dto.getMemberId();
		logger.info(memberId+ (String) map.get("applicantNo"));
		int applicantNo = Integer.parseInt((String) map.get("applicantNo"));
		
		String certificateName = (String)map.get("certificateName");
		logger.info(certificateName);
		
		String certificateScore = (String)map.get("certificateScore");
		logger.info(certificateScore);
		
		String certificateDate = (String)map.get("certificateDate");
		logger.info(certificateDate);
		
		String certificateCode = (String)map.get("certificateCode");
	
		logger.info(certificateCode);
		
		logger.info("dto+ applicantNo complete"+memberId + applicantNo);
		
		cservice.addCertificate(map);
		int result = 1;
		
		return result;
		
	}
	
	@PostMapping("certificateList.do")
	@ResponseBody
	public ArrayList<CertificateDto> certificateList(@RequestParam Map<String, Object> map,Model model) throws Exception{
		String applicantNo =(String) map.get("applicantNo");
		logger.info(applicantNo);
		ArrayList<CertificateDto> cdtos = cservice.certificateList(map);
		

		model.addAttribute("certificates",cdtos);
		
		return cdtos;
		
		
		
	}
	@PostMapping("certificateDelete.do")
	@ResponseBody
	public String certificateDelete(@RequestParam Map<String,Object> map) throws Exception{
		
		logger.info("goto certificateDelete");
		int certificateRegisterNo = Integer.parseInt((String)map.get("certificateRegisterNo"));
		logger.info((String)map.get("certificateRegisterNo"));
		cservice.certificateDelete(map);
		String result = "success";
		return result;
	}

	
}
