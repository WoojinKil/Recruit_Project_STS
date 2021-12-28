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

import com.example.demo.dto.ApplicantDto;
import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.MemberDto;

import com.example.demo.dto.ObjectDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.RecruitNoticeDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;
import com.example.demo.service.ApplicantService;
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
	@Autowired
	ApplicantService apcntservice;

	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);

	@GetMapping("/applyForm")
	public String applyForm(@RequestParam Map<String, Object> map, HttpSession session, Model model) throws Exception {
		
		
		MemberDto dto = (MemberDto) session.getAttribute("member");
		
		String memberId = dto.getMemberId();

		int recruitNo = Integer.parseInt((String) map.get("recruitNo"));

			
		


		
		RecruitNoticeDto rdto = rservice.recruitNoticeView(recruitNo);

		MemberDto mdto = mservice.memberView(memberId);




		 int app_ck = aservice.applyChecked(recruitNo, memberId);

		if(app_ck == 0) {
			aservice.applicantInsert(recruitNo, memberId);
				
		}
		//버튼은 누르는 순간 insert가 된다. 새로고침을 해도 된다.(문제)
		
		
		// 콤보박스를 누르면 사업부-직무-전형대상 순으로 뜬다.
		ArrayList<PartDto> pdtos = aservice.partView(recruitNo);

		ArrayList<WorkDto> wdtos = aservice.workView(recruitNo);

		ArrayList<ObjectDto> odtos = aservice.objectView(recruitNo);
		
		ArrayList<ApplyDto> adtos = aservice.applyView(recruitNo);
		
		ApplicantDto apdto = apcntservice.viewApplicant(memberId, recruitNo);
		model.addAttribute("noticeInfo", rdto);
		model.addAttribute("applicant", mdto);
		model.addAttribute("parts", pdtos);
		model.addAttribute("wdtos", wdtos);
		model.addAttribute("odtos", odtos);
		model.addAttribute("adtos",adtos);
		model.addAttribute("apdto",apdto);
		
		
		return "/apply/applyform";
		
		
		
	}
	
	@GetMapping("/updateApplyForm")
	public String updateApplyForm(@RequestParam Map<String, Object> map, HttpSession session, Model model) throws Exception {
		
		
		MemberDto dto = (MemberDto) session.getAttribute("member");
		
		String memberId = dto.getMemberId();

		int recruitNo = Integer.parseInt((String) map.get("recruitNo"));

			
		
		

		
		RecruitNoticeDto rdto = rservice.recruitNoticeView(recruitNo);

		MemberDto mdto = mservice.memberView(memberId);



		
		


		
		// 콤보박스를 누르면 사업부-직무-전형대상 순으로 뜬다.
		ArrayList<PartDto> pdtos = aservice.partView(recruitNo);

		ArrayList<WorkDto> wdtos = aservice.workView(recruitNo);

		ArrayList<ObjectDto> odtos = aservice.objectView(recruitNo);

		ArrayList<ApplyDto> adtos = aservice.applyView(recruitNo);

		ApplicantDto apdto = apcntservice.viewApplicant(memberId, recruitNo);

		model.addAttribute("noticeInfo", rdto);
		model.addAttribute("applicant", mdto);

		model.addAttribute("parts", pdtos);
		model.addAttribute("wdtos", wdtos);
		model.addAttribute("odtos", odtos);
		model.addAttribute("adtos",adtos);
		model.addAttribute("apdto",apdto);
		
		return "/apply/applyform";
		
		
		
	}
    
//수정해야할꺼
	@PostMapping("/applicantSaveTemp.do")
	@ResponseBody
	public String applicantSaveTemp(@RequestParam Map<String, Object> map) throws Exception{

		try {
			aservice.applicantSaveTemp(map);
			String result="success";
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
			String result = "fail";
			return result;
		}
	}

	
	@PostMapping("/finalApply.do")
	@ResponseBody
	public String finalApply(@RequestParam Map<String, Object> map) throws Exception{
		
		try {
			aservice.finalApply(map);
			String result = "success";
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
			return null;
		}
		
		
	}
	@RequestMapping("/applyresult")
	public String applyResult(@RequestParam int applicantNo, Model model) throws Exception{
		model.addAttribute("applicantNo",applicantNo);
		
		return "/apply/applyresult";
	}
	
}
