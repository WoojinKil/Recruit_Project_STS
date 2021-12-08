package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.BbsDto;

@Mapper
@Repository
public interface BbsMapper {
	public ArrayList<BbsDto> bbsList() throws Exception;
	public BbsDto bbsView(int bbsNo) throws Exception;
	public void bbsHitUp(int bbsNo) throws Exception;
	
	
}
