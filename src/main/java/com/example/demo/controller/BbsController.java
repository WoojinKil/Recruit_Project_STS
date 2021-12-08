package com.example.demo.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.BbsDto;
import com.example.demo.service.BbsService;

@Controller
@RequestMapping("/bbs")
public class BbsController {

	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Autowired
	BbsService bservice;
	
	@RequestMapping("/bbsList")
	public String bbsList(Model model) throws Exception{
		ArrayList<BbsDto> bbsArray = bservice.bbsList();
		model.addAttribute("bbsArray", bbsArray);
		
		return "/bbs/bbsList";  
	}
	
	@RequestMapping("/bbsView")
	public String bbsView(@RequestParam int bbsNo, Model model) throws Exception{
		
		logger.info("공지사항 번호 출력"+bbsNo);
		bservice.bbsHitUp(bbsNo);
		BbsDto bdto = bservice.bbsView(bbsNo);
		
		model.addAttribute("bbs",bdto);
		
		return "/bbs/bbsview";
		
	}
}
