package com.example.demo.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.MailSendService;

public class CertifiedEmailController {

	MailSendService service;
	@PostMapping("/certifiedEmail")
	public void certifiedEmail(@RequestParam("email") String email) {

		service.mailSend(email);

	}
}