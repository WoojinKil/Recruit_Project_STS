package com.example.demo.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MemberDto;
@Mapper
@Repository
public interface MemberMapper {
	public void join(Map<String, Object> map);
	public int idCheck(String memberId);
	public MemberDto memberLogin(MemberDto dto);
	public MemberDto memberView(String memberId);
}
