package com.example.demo.serviceImpl;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.example.demo.service.MailSendService;

public class MailSendServiceImple implements MailSendService {

	private final JavaMailSender javaMailSender = null;
	@Override
	public void mailSend(String email) {
	    SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
	    simpleMailMessage.setTo(email);
	    simpleMailMessage.setSubject("title");
	    simpleMailMessage.setText("Text Mail Sender");

	    javaMailSender.send(simpleMailMessage);
	}
	
}