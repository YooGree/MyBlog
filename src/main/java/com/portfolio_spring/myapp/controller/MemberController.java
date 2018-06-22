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

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 물려받음, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelanView 생성
	@RequestMapping(value = "/member/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/member/";

		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();

		if ("signup".equalsIgnoreCase(action)) {
			viewName = viewName+"signup";	
		} else if ("insert".equalsIgnoreCase(action)) {
			viewName = viewName+"login";
			service.SaveObject(paramMap);
		} else if ("mypage".equalsIgnoreCase(action)) {
			viewName = "/mypage/mypage";
			resultMap = service.getObject(paramMap);
		} else if ("update".equalsIgnoreCase(action)) {
			viewName = "/mypage/mypage";
			service.UpdateObject(paramMap);
		} else if ("delete".equalsIgnoreCase(action)) {
			viewName = "/mypage/mypage";
			service.DeleteObject(paramMap);
		} else if ("login".equalsIgnoreCase(action)) {
			viewName = viewName+"login";
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}