package com.example.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.MemberDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.service.ApplyService;
import com.example.demo.service.RecruitNoticeService;


@Controller
@RequestMapping("/recruitnavigate")
public class RecruitNoticeController {
	
	@Autowired
	RecruitNoticeService rservice;
	@Autowired
	ApplyService aservice;
	
	private static final Logger logger = LoggerFactory.getLogger(RecruitNoticeController.class);
	
	@RequestMapping("/recruitnotice")
	public String recruitNoticeForm(Model model) throws Exception {
	
		ArrayList<RecruitNoticeDto> array =  (ArrayList<RecruitNoticeDto>)rservice.noticeList();
		
		model.addAttribute("noticeArray", array);
	
		logger.info("goto recruitNoticeForm");
		return "/recruitnavigate/recruitnoticeform";
	
	}
	//채용공고를 클릭하면 이 지원자가 해당공고를 지원하였는지 확인한다.
	@RequestMapping("/recruitnoticeview")
	public String recruitNoticeView(@RequestParam int recruitNo, HttpSession session, Model model) throws Exception{
		logger.info("recruitNoticeView");
		MemberDto mdto = (MemberDto)session.getAttribute("member");
		int applyChecked;
		if(mdto == null) {
			logger.info("비어있는 세션");
			applyChecked =0;
		}else {
			String memberId = mdto.getMemberId();
			applyChecked = aservice.applyChecked(recruitNo, memberId);
			if(applyChecked == 0) {
				applyChecked= 0;
			}else {
				applyChecked=1; //이미 지원중
			}
		}
		
		rservice.recruitNoticeHitUp(recruitNo);
		
		RecruitNoticeDto dto = rservice.recruitNoticeView(recruitNo);
		model.addAttribute("NoticeView", dto);
		model.addAttribute("applyCheckedResult",applyChecked);
		return "/recruitnavigate/recruitnoticeview";
		
	}
	
}
