package com.example.demo.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class TalentController {
	private static final Logger logger = LoggerFactory.getLogger(TalentController.class);
	
	
	@RequestMapping(value="/talent")
	public String talent(Locale locale) {
		logger.info("Welcome process page", locale);

		return "/introduce/talent";
	}
}
