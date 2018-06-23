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
	String sqlMapId;
	
	public List<Object> getList(String sqlMapId, Object dataMap){
		
		List<Object> resultList = dao.getList(sqlMapId, dataMap);
		return resultList;		
	}
	
	public Map<String, Object> getObject(Object dataMap) {
		
		sqlMapId = "user.myinfo";
		Map<String, Object> resultMap = dao.getObject(sqlMapId, dataMap);
		return resultMap;	
	}
	
	// 회원 가입 
	public void SaveObject(Map<String, Object> dataMap) {
		
		// 회원 가입
		sqlMapId = "user.insert";
		dao.SaveObject(sqlMapId, dataMap);
	
		// 권한 부여
		sqlMapId = "user.authority";
		dao.SaveObject(sqlMapId, dataMap);
	}
	
	// 회원 업데이트
	public void UpdateObject(Map<String, Object> dataMap) {
		
		if (dataMap.get("MEMBER_PW").equals("    ")) {
			sqlMapId = "user.update";
		} else {
			sqlMapId = "user.password";
		}
		dao.UpdateObject(sqlMapId, dataMap);
	}
	
	// 회원 탈퇴
	public void DeleteObject(Object dataMap) {
		
		// 권한 삭제
		sqlMapId = "user.delete_aut";
		dao.DeleteObject(sqlMapId, dataMap);
		
		// 회원 삭제
		sqlMapId = "user.delete";
		dao.DeleteObject(sqlMapId, dataMap);
	}
	
	
}
