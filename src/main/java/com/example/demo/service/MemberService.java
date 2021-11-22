package com.example.demo.service;

import java.util.Map;

import com.example.demo.dto.MemberDto;


public interface MemberService {

	public void join(Map<String, Object> map) throws Exception;

	public int idCheck(String memberId) throws Exception;
	public MemberDto memberLogin(MemberDto member) throws Exception;
	
}
