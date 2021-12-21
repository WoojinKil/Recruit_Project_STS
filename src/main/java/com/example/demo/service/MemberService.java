package com.example.demo.service;

import java.util.Map;

import org.apache.catalina.util.ParameterMap;

import com.example.demo.dto.MemberDto;


public interface MemberService {

	public void join(Map<String, Object> map) throws Exception;

	public int idCheck(String memberId) throws Exception;
	public MemberDto memberLogin(MemberDto member) throws Exception;
	public MemberDto memberView(String memberId) throws Exception;
	public MemberDto memberFindPass(MemberDto member) throws Exception;
	public void newPass(MemberDto member) throws Exception;
}
