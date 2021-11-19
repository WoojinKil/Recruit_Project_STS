package com.example.demo.service;

import java.util.Map;


public interface MemberService {

	public void join(Map<String, Object> map) throws Exception;
	public int idJoinCheck(String id )throws Exception;
	
}
