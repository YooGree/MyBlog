package com.portfolio_spring.myapp.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShareDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Object> getList(String sqlMapId, Object dataMap) {
		
		List<Object> result = sqlSession.selectList(sqlMapId, dataMap);
		return result;
	}
	
	public Map<String, Object> getObject(String sqlMapId, Object dataMap) {
		
		Map<String, Object> result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
	
	public String getLogo(String sqlMapId, Object dataMap) {
		String result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
	
	public String getThema(String sqlMapId, Object dataMap) {
		String result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
	
	public String getSeq(String sqlMapId, Object dataMap) {
		String result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}
	
	public void SaveObject(String sqlMapId, Object dataMap) {
		sqlSession.insert(sqlMapId, dataMap);
	}
	
	public void UpdateObject(String sqlMapId, Object dataMap) {
		sqlSession.update(sqlMapId, dataMap);
	}
	
	public void DeleteObject(String sqlMapId, Object dataMap) {
		sqlSession.delete(sqlMapId, dataMap);
	}
	
}
