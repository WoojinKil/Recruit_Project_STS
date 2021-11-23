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

import com.example.demo.dto.NoticeDto;
import com.example.demo.service.NoticeService;


@Controller
@RequestMapping("/recruitnavigate")
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping("/recruitnotice")
	public String recruitNoticeForm(Model model) throws Exception {
	
		ArrayList<NoticeDto> array =  (ArrayList<NoticeDto>)service.noticeList();
		
		model.addAttribute("noticeArray", array);
	
		logger.info("goto recruitNoticeForm");
		return "/recruitnavigate/recruitnoticeform";
	
	}
	
	@RequestMapping("/recruitnoticeview")
	public String recruitNoticeView(@RequestParam int recruitNoticeNo,  Model model) throws Exception{
		
		
		NoticeDto dto = service.recruitNoticeView(recruitNoticeNo);
		model.addAttribute("NoticeView",dto);
		return "/recruitnavigate/recruitnoticeview-2";
		
	}
	
}
