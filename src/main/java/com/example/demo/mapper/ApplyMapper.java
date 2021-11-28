package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.ObjectDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;
@Mapper
@Repository
public interface ApplyMapper {

	//각 채용공고의 채용유형 불러오기
	public TypeDto typeView(int recruitNo)throws Exception;
	
	//각 채용을 하는 사업부 불러오기
	public ArrayList<PartDto> partView(int recruitNo)throws Exception;
	
	//각 채용을 하는 사업부에 맞는 직무 불러오기
	public ArrayList<WorkDto> workView(int recruitNo) throws Exception;
	
	//각 채용에 대한 지원분야 정보를 불러오기
	public ArrayList<ApplyDto> applyView(int recruitNo) throws Exception;
	
	public ArrayList<ObjectDto> objectView(int recruitNo) throws Exception;
}
