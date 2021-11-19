package com.example.demo.controller;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.MemberDto;
import com.example.demo.service.MemberService;

@Controller
@RequestMapping("member")
public class JoinController {

	@Autowired
	MemberService service;

	@RequestMapping("/joinform")
	public String joinform() {

		return "member/joinform";
	}

	@PostMapping("/join")
	
	public String join(@RequestParam Map <String, Object> map, Model model) throws Exception {


		System.out.println("들어가자");
		service.join(map);

		return "redirect:/";
	}
	@PostMapping("/idJoinCheck")
	@ResponseBody
	public int join(@RequestParam String id) throws Exception{
		
		return service.idJoinCheck(id);

		
	}
//	@GetMapping("/join")
//	public String join2(@RequestParam Map <String, Object> map, Model model) throws Exception {
//
//
//		System.out.println("들어가자"+map);
//		
//		service.join(map);
//
//		return "redirect:/";
//	}
}
