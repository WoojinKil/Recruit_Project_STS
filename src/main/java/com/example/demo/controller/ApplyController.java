package com.example.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.MemberDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.service.MemberService;
import com.example.demo.service.RecruitNoticeService;


@Controller
@RequestMapping("apply")
public class ApplyController {


	@Autowired
	RecruitNoticeService rservice;
	@Autowired
	MemberService mservice;
	
	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);
	
	
	@GetMapping("/applyForm")
	public String applyForm(@RequestParam int recruitNo, @RequestParam String memberId, Model model) throws Exception {
		logger.info("goto applyForm"+recruitNo+memberId);
		
		RecruitNoticeDto rdto = rservice.recruitNoticeView(recruitNo);
		logger.info("rdto complete");
		MemberDto mdto = mservice.memberView(memberId);
		logger.info("mdto complete");
		
		model.addAttribute("noticeInfo",rdto);
		model.addAttribute("applicant",mdto);
		
		
		return "apply/applyform";
	}
	
	
	
}