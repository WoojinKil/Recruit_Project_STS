package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.dto.ApplyDto;
import com.example.demo.dto.CertificateDto;
import com.example.demo.dto.ObjectDto;
import com.example.demo.dto.PartDto;
import com.example.demo.dto.TypeDto;
import com.example.demo.dto.WorkDto;


public interface ApplyService {

	public TypeDto typeView(int recruitNo) throws Exception;
	public ArrayList<PartDto> partView(int recruitNo)throws Exception;
	public ArrayList<WorkDto> workView(int recruitNo)throws Exception;
	public ArrayList<ApplyDto> applyView(int recruitNo) throws Exception;
	public ArrayList<ObjectDto> objectView(int recruitNo) throws Exception;
	public int applyChecked(int recruitNo, String memberId) throws Exception;

	public void applicantInsert(int recruitNo, String memberId) throws Exception;
	
	public void addCertificate(int applicantNo) throws Exception;
	public ArrayList<CertificateDto> certificateList(int applicantNo) throws Exception;
	
}
