package com.example.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.MemberDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.service.MyApplyService;

@Controller
@RequestMapping("myApply")
public class MyApplyController {
	
	@Autowired
	MyApplyService maservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(MyApplyController.class);
	@RequestMapping("/myApplyList")
	public String myApplyList( HttpSession session,Model model) throws Exception {
		
		MemberDto mdto =(MemberDto)session.getAttribute("member");
		logger.info("session complete");
		String memberId = mdto.getMemberId();
		ArrayList<RecruitNoticeDto> rdtos = maservice.myApplyTitleList(memberId);
		logger.info("rdto complete");
		ArrayList<TypeDto> tdtos = maservice.myApplyTypeList(memberId);
		logger.info("tdtos complete");
		ArrayList<ApplicantDto> adtos= maservice.myFinalApplyCheckedList(memberId);
		logger.info("adtos complete"+adtos);
		
		
		
		model.addAttribute("rdtos",rdtos);
		model.addAttribute("tdtos",tdtos);
		model.addAttribute("adtos",adtos);
		return "/myapply/myapplylist";
		
				
				
	}
	
	@RequestMapping("/myDeleteApply")
	public String deleteApply(@RequestParam int recruitNo, HttpSession session,Model model) throws Exception{
		
		MemberDto mdto = (MemberDto)session.getAttribute("member");
		String memberId = mdto.getMemberId();
		maservice.myDeleteApply(memberId, recruitNo);
		
		return "/myapply/myapplylist";
	}
	
	
}
