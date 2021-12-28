package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.BbsDto;
import com.example.demo.service.BbsService;

@Controller
@RequestMapping("/bbs")
public class BbsController {

	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Autowired
	BbsService bservice;
	
	@RequestMapping("/bbsList")
	public String bbsList() throws Exception{

		return "/bbs/bbsList";  
	}

	@RequestMapping("/bbsList.do")
	@ResponseBody
	public ArrayList<BbsDto> getbbsList() throws Exception{
		try {


			return bservice.bbsList();
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		   
	}

	@RequestMapping("/bbsView")
	public String bbsView(@RequestParam int bbsNo, Model model) throws Exception{
		
		
		bservice.bbsHitUp(bbsNo);
		BbsDto bdto = bservice.bbsView(bbsNo);
		
		model.addAttribute("bbs",bdto);
		
		return "/bbs/bbsview";
		
	}
	
	@PostMapping("/SearchbbsList.do")
	@ResponseBody
	public ArrayList<BbsDto> searchBbsList(@RequestParam Map<String, Object> map) throws Exception{
		
		try {
			return bservice.searchBbsList(map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

}
