package com.portfolio_spring.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio_spring.myapp.service.BoardService;
import com.portfolio_spring.myapp.util.CommonUtil;
import com.portfolio_spring.myapp.util.DateUtil;

// 게시판 관련 컨트롤러 정의
@Controller
public class BoardController {
	
	// 게시판 관련 서비스 Autowired
	@Autowired
	private BoardService service;
	
	
	// 날짜관련 Autowired
	@Autowired
	private DateUtil dateUtil;
		
	
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 물려받음, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelanView 생성
	@RequestMapping(value = "/board/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/board/";
		String sqlMapId; // sqlmap에 날릴 쿼리문 정의
		
		// 데이터 한개를 받아오면 맵을 쓰고
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 데이터 여러개를 받아오면 리스트를 쓴다.
		List<Object> resultList = new ArrayList<Object>();
		
		// 글쓰기
		if ("edit".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			paramMap.put("BOARD_DATE", dateUtil.getSysdate()); // 오늘 날짜를 자동으로 만들고
			
		// 글읽기	
		} else if ("list".equalsIgnoreCase(action)) {
			viewName = viewName + action;			
			resultList = service.getList("board.list", paramMap);
			resultMap = service.getObject("board.read", paramMap);
			
		} else if ("insert".equalsIgnoreCase(action)) {
			viewName = viewName + "list";			
			sqlMapId = "board.insert";
			service.SaveObject(sqlMapId, paramMap);
		} else if("read".equalsIgnoreCase(action)) {
			viewName = viewName + "list";			
			resultMap = service.getObject("board.read", paramMap);
		} else if("search".equalsIgnoreCase(action)){
			viewName = viewName + action;
		} 
		

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}