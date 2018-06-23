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
	
	public String getLogo(Object dataMap) {
		
		// 회원이 등록한 로고 추가
		sqlMapId = "setting.logo";
		dao.SaveObject(sqlMapId, dataMap);
		
		// 등록한 로고 가져오기
		sqlMapId = "setting.setLogo";
		String result = dao.getLogo(sqlMapId, dataMap);
		return result;
	}
	
	public String getThema(Object dataMap) {
		
		// 회원이 선택한 테마 추가
		sqlMapId = "setting.thema";
		dao.SaveObject(sqlMapId, dataMap);
		
		// 선택한 테마 가져오기
		sqlMapId = "setting.setThema";
		String result = dao.getThema(sqlMapId, dataMap);
		return result;
	}
}
