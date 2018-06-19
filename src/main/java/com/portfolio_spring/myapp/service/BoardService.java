package com.portfolio_spring.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio_spring.myapp.dao.MemberDao;

@Service
public class BoardService {
	
	@Autowired
	private MemberDao dao;
	
	public List<Object> getList(String sqlMapId, Object dataMap){
		
		List<Object> resultList = dao.getList(sqlMapId, dataMap);
		return resultList;		
	}
	
	public Map<String, Object> getObject(String sqlMapId, Object dataMap) {
		
		Map<String, Object> resultMap = dao.getObject(sqlMapId, dataMap);
		return resultMap;	
	}
	
	public void SaveObject(String sqlMapId, Object dataMap) {
		
		dao.SaveObject(sqlMapId, dataMap);
	}
}
