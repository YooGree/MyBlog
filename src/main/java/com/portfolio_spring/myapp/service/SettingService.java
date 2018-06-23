package com.portfolio_spring.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio_spring.myapp.dao.ShareDao;

@Service
public class SettingService {
	
	@Autowired
	private ShareDao dao;
	String sqlMapId;
	
	public String getThema(Object dataMap) {
		
		// 회원이 등록한 로고 추가
		sqlMapId = "setting.logo";
		dao.SaveObject(sqlMapId, dataMap);
		
		// 등록한 로고 가져오기
		sqlMapId = "setting.setLogo";
		String result = dao.getThema(sqlMapId, dataMap);
		return result;
	}	
}
