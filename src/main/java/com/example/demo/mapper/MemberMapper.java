package com.example.demo.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
@Mapper
@Repository
public interface MemberMapper {
	public void join(Map<String, Object> map);
	public int idJoinCheck(String id);
}
