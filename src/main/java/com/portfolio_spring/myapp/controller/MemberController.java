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

import com.portfolio_spring.myapp.service.MemberService;
import com.portfolio_spring.myapp.util.CommonUtil;

// 회원 관련 컨트롤러 정의
@Controller
public class MemberController {
	
	// 회원 관련 서비스 Autowired
	@Autowired
	private MemberService service;
	
	// 시퀀스 관련 Autowired
	@Autowired
	private CommonUtil commonUtil;
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 물려받음, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelanView 생성
	@RequestMapping(value = "{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "";
		String sqlMapId; // sqlmap에 날릴 쿼리문 정의
		
		// 데이터 한개를 받아오면 맵을 쓰고
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 데이터 여러개를 받아오면 리스트를 쓴다.
		List<Object> resultList = new ArrayList<Object>();
		System.out.println(action);
		
		// 회원 가입
		if ("signup".equalsIgnoreCase(action)) {
			System.out.println("ㅇㅋㅇㅋ");
			viewName = "/login";
			paramMap.put("commonUtil", commonUtil.getUniqueSequence()); // 기본 시퀀스를 자동으로 만들고
			sqlMapId = "user.signup"; // user라는 이름을 가진 sqlmap의 signup으로 가서 쿼리문을 가져온다.
			service.SaveObject(sqlMapId, paramMap); // 가져온 쿼리문과 시퀀스를 서비스로 보낸다.
		// 내 정보	
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}