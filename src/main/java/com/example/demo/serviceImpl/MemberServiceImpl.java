package com.example.demo.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public int idJoinCheck(String id )throws Exception{
		
		
		return mapper.idJoinCheck(id); 
	}

}
