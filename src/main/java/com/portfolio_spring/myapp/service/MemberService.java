package com.portfolio_spring.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio_spring.myapp.dao.ShareDao;

@Service
public class MemberService {
	
	@Autowired
	private ShareDao dao;
	
	public List<Object> getList(String sqlMapId, Object dataMap){
		
		List<Object> resultList = dao.getList(sqlMapId, dataMap);
		return resultList;		
	}
	
	public Map<String, Object> getObject(String sqlMapId, Object dataMap) {
		
		Map<String, Object> resultMap = dao.getObject(sqlMapId, dataMap);
		return resultMap;	
	}
	
	// 회원 가입 
	public void SaveObject(String sqlMapId, Object dataMap) {
		
		dao.SaveObject(sqlMapId, dataMap);
	}
	
	// 회원 업데이트
	public void UpdateObject(String sqlMapId, Object dataMap) {
		
		dao.UpdateObject(sqlMapId, dataMap);
	}
	
	// 회원 탈퇴
	public void DeleteObject(String sqlMapId, Object dataMap) {
		
		dao.DeleteObject(sqlMapId, dataMap);
	}
	
	
}
