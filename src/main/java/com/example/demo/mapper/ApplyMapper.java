package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.CertificateDto;
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

	//각 채용에 대한 직무 정보를 불러오기
	public ArrayList<ObjectDto> objectView(int recruitNo) throws Exception;

	//지원자(session)이 이미 지원하거나 지원중인지를 체크하는지 불러오기,0이면 지원 안함, 1이면 지원중 혹은 지원 완료
	int applyChecked(int recruitNo, String memberId) throws Exception;
	
	//로그인한 회원이 지원하기 버튼을 누르면 지원자의 정보가 삽입된다.
	public void applicantInsert(int recruitNo, String memberId) throws Exception;
	
	//임시저장을 누르면 지원자가 입력한 내용이 update된다.
	public void applicantSaveTemp(Map<String, Object> map) throws Exception;
	
	//최종제출을 누르면 지원자가 입력한 내용이 업데이트되고 finalApplyChecked가 1이된다.
	public void finalApply(Map<String, Object> map) throws Exception;
}
