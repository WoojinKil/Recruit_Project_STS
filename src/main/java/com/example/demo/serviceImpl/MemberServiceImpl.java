package com.example.demo.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberMapper;
import com.example.demo.service.MemberService;
@Service
public class MemberServiceImpl implements MemberService {

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
		
		return mapper.memberLogin(member);
		
	}





	@Override
	public MemberDto memberView(String memberId) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("멤버조회 시스템 들어옴");
		return mapper.memberView(memberId);
	}


}
