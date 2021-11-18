package com.example.demo.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProcessController {
	private static final Logger logger = LoggerFactory.getLogger(ProcessController.class);
	
	@RequestMapping(value="/process")
	public String process(Locale locale) {
		logger.info("Welcome process page", locale);
		return "/introduce/process";
	}
}
