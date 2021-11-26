package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.MemberDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;
import com.example.demo.service.ApplyService;
import com.example.demo.service.MemberService;
import com.example.demo.service.RecruitNoticeService;

@Controller
@RequestMapping("apply")
public class ApplyController {

	@Autowired
	RecruitNoticeService rservice;
	@Autowired
	MemberService mservice;
	@Autowired
	ApplyService aservice;

	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);

	@GetMapping("/applyForm")
	public String applyForm(@RequestParam Map<String, Object> map, HttpSession session, Model model) throws Exception {
		logger.info("goto applyForm controller");
		MemberDto dto = (MemberDto) session.getAttribute("member");
		logger.info("session complete");
		String memberId = dto.getMemberId();

		int recruitNo = Integer.parseInt((String) map.get("recruitNo"));

		logger.info("goto applyForm" + recruitNo + memberId);

		
		RecruitNoticeDto rdto = rservice.recruitNoticeView(recruitNo);
		logger.info("rdto complete" + rdto);
		MemberDto mdto = mservice.memberView(memberId);
		logger.info("mdto complete" + mdto);
		TypeDto tdto = aservice.typeView(recruitNo);
		logger.info("tdto complete" + tdto);
		ArrayList<PartDto> pdtos = aservice.partView(recruitNo);
		logger.info("pdtos complete" + pdtos);
		ArrayList<WorkDto> wdtos = aservice.workView(recruitNo);
		logger.info("wdtos complete" + wdtos);
		ArrayList<ApplyDto> adtos = aservice.applyView(recruitNo);
		
		
		model.addAttribute("noticeInfo", rdto);
		model.addAttribute("applicant", mdto);
		model.addAttribute("type", tdto);
		model.addAttribute("parts", pdtos);
		model.addAttribute("wdtos",wdtos);
		model.addAttribute("adtos",adtos);
		return "apply/applyform";
		
	}



}
