package com.example.demo.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping(value = "/loginform")
	public String loginForm () {
		return "/member/loginform";
	}

	@PostMapping("/login")
	public String login(@RequestParam Map<String, Object> map, Model model) {
	
		System.out.println("로그인 시도"+map);
		
		return "redirect:/";
	}
	
	
	
}
