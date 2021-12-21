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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.MemberDto;
import com.example.demo.dto.ObjectDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;
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

	
	//채용공고 페이지로 들어가기 위한 controller
	@RequestMapping("/recruitnotice")

	public String recruitNoticeForm(Model model) throws Exception {


		return "/recruitnavigate/recruitnoticeform";

	}

	@PostMapping("/recruitNotice.do")
	@ResponseBody
	public ArrayList<RecruitNoticeDto> getRecruitNotice() throws Exception {
		try {
			return rservice.noticeList();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	// 채용공고를 클릭하면 이 지원자가 해당공고를 지원하였는지 확인한다.
	@RequestMapping("/recruitnoticeview")
	public String recruitNoticeView(@RequestParam int recruitNo, HttpSession session, Model model) throws Exception {

		logger.info("recruitNoticeView");
		MemberDto mdto = (MemberDto) session.getAttribute("member");
		int applyChecked;
		if (mdto == null) {
			logger.info("비어있는 세션");
			applyChecked = 0;
		} else {
			String memberId = mdto.getMemberId();
			applyChecked = aservice.applyChecked(recruitNo, memberId);
			if (applyChecked == 0) {
				applyChecked = 0;
			} else {
				applyChecked = 1; // 이미 지원중
			}
		}

		rservice.recruitNoticeHitUp(recruitNo);

		RecruitNoticeDto dto = rservice.recruitNoticeView(recruitNo);

		// 버튼을 클릭하면 직무를 볼 수 있다.
		ArrayList<PartDto> pdtos = aservice.partView(recruitNo);
		logger.info("pdtos complete" + pdtos);
		ArrayList<WorkDto> wdtos = aservice.workView(recruitNo);
		logger.info("wdtos complete" + wdtos);
		ArrayList<ObjectDto> odtos = aservice.objectView(recruitNo);
		logger.info("odtos complete" + odtos);
		ArrayList<ApplyDto> adtos = aservice.applyView(recruitNo);
		logger.info("adtos complete" + adtos);

		
//		  
//		  for(int i = 0; i < adtos.size(); i++) { 
//			  String want =  adtos.get(i).getApplyContent(); 
//			  want.replace("\\n", "<br>");
//		  
//			  adtos.get(i).setApplyContent(want);
//		  
//		  }
//		 

		model.addAttribute("NoticeView", dto);
		model.addAttribute("applyCheckedResult", applyChecked);

		model.addAttribute("parts", pdtos);
		model.addAttribute("wdtos", wdtos);
		model.addAttribute("odtos", odtos);
		model.addAttribute("adtos", adtos);

		return "/recruitnavigate/recruitnoticeview";

	}

	@PostMapping("/searchNotice.do")
	@ResponseBody
	public ArrayList<RecruitNoticeDto> searchNotice(@RequestParam Map<String, Object> map) throws Exception{
		
		try {
			return rservice.searchNoticeList(map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	
}
