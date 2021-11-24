package com.example.demo.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.service.RecruitNoticeService;


@Controller
@RequestMapping("/recruitnavigate")
public class RecruitNoticeController {
	
	@Autowired
	RecruitNoticeService service;
	
	private static final Logger logger = LoggerFactory.getLogger(RecruitNoticeController.class);
	
	@RequestMapping("/recruitnotice")
	public String recruitNoticeForm(Model model) throws Exception {
	
		ArrayList<RecruitNoticeDto> array =  (ArrayList<RecruitNoticeDto>)service.noticeList();
		
		model.addAttribute("noticeArray", array);
	
		logger.info("goto recruitNoticeForm");
		return "/recruitnavigate/recruitnoticeform";
	
	}
	
	@RequestMapping("/recruitnoticeview")
	public String recruitNoticeView(@RequestParam int recruitNo,  Model model) throws Exception{
		
		service.recruitNoticeHitUp(recruitNo);
		RecruitNoticeDto dto = service.recruitNoticeView(recruitNo);
		model.addAttribute("NoticeView", dto);
		return "/recruitnavigate/recruitnoticeview-2";
		
	}
	
}
