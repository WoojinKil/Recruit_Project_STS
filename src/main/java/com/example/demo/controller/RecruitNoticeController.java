package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recruitnavigate")
public class RecruitNoticeController {

	@RequestMapping("/recruitnotice")
	public String recruitNoticeForm() {
		return "/recruitnavigate/recruitnoticeform";
	}
}
