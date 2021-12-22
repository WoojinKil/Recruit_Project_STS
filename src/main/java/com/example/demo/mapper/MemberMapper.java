package com.example.demo.mapper;

import java.util.Map;

import org.apache.catalina.util.ParameterMap;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MemberDto;
@Mapper
@Repository
public interface MemberMapper {
	public void join(Map<String, Object> map) throws Exception;
	public int idCheck(String memberId) throws Exception;
	public MemberDto memberLogin(MemberDto dto) throws Exception;
	public MemberDto memberView(String memberId) throws Exception;
	public MemberDto memberFindPass(MemberDto dto) throws Exception;
	public void newPass(MemberDto member) throws Exception;
	public void withdraw(Map<String, Object> map) throws Exception;
	public int checkPass(Map<String, Object> map) throws Exception;
	
	
}
