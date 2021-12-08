package com.example.demo.serviceImpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.BbsDto;
import com.example.demo.mapper.BbsMapper;
import com.example.demo.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsMapper mapper;
	@Override
	public ArrayList<BbsDto> bbsList() throws Exception {
		// TODO Auto-generated method stub
		
		return mapper.bbsList();
	}
	@Override
	public BbsDto bbsView(int bbsNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.bbsView(bbsNo);
		
	}
	@Override
	public void bbsHitUp(int bbsNo) throws Exception {
		// TODO Auto-generated method stub
		mapper.bbsHitUp(bbsNo);
	}

}
