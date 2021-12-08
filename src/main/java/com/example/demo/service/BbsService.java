package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.dto.BbsDto;

public interface BbsService {

	public ArrayList<BbsDto> bbsList() throws Exception;
	public BbsDto bbsView(int bbsNo) throws Exception;
	public void bbsHitUp(int bbsNo) throws Exception;
	
}
