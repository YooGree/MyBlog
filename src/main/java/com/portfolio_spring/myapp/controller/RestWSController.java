package com.portfolio_spring.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio_spring.myapp.service.BoardService;


@RestController
public class RestWSController {

	@Autowired
	private BoardService service;
	

	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public  Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if ("content".equalsIgnoreCase(action)) {
			String sqlMapId = "board.read2";
			resultMap = service.getObject(sqlMapId, paramMap);
			
		} else if("firstList".equalsIgnoreCase(action)) {
			String sqlMapId = "board.read3"; 
			resultMap = service.getObject(sqlMapId, paramMap);
		
		} else if ("commentList".equals(action)) {
			resultList = service.getList("comment.list", paramMap);
			return resultList;
		}
		return resultMap;
	}
	
	
	
}
