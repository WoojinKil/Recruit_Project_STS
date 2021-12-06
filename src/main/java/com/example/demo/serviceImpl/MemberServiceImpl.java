package com.example.demo.serviceImpl;

import java.util.Map;

// TODO Auto-generated method stub


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.controller.MemberController;
import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberMapper;
import com.example.demo.service.MemberService;
@Service
public class MemberServiceImpl implements MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberMapper mapper;
	
	
	@Override
	public void join(Map<String, Object> map) throws Exception {
		
		// TODO Auto-generated method stub

		System.out.println("Service들어감"+ map);
		mapper.join(map);

	}





	@Override
	public int idCheck(String memberId) throws Exception {
		// TODO Auto-generated method stub
		
		
		return mapper.idCheck(memberId);
	}





	@Override
	public MemberDto memberLogin(MemberDto member) throws Exception {
		// TODO Auto-generated method stub
		logger.info("goto memberLogin serviceImpl");

		return mapper.memberLogin(member);
		
	}





	@Override
	public MemberDto memberView(String memberId) throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.memberView(memberId);
	}





	@Override
	public MemberDto memberFindPass(MemberDto member) throws Exception {
		// TODO Auto-generated method stub
		
		
		return mapper.memberFindPass(member);
	}


}
