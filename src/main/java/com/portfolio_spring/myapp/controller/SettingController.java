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
public class SettingController {
	
	// RequestMapping를 이용하여 매핑값, 데이터 전송 방식을 물려받음, 이후 RequestParam을 이용하여 넘어오는 데이터를 받고, modelanView 생성
	@RequestMapping(value = "/settings/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/settings/";
		String color = "";
		String sqlMapId; // sqlmap에 날릴 쿼리문 정의

		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();

		if ("setting".equalsIgnoreCase(action)) {
			viewName = viewName+"setting";	
		} else if ("thema".equalsIgnoreCase(action)) {
			viewName = viewName+"editTheme";
		} else if ("thema_change".equalsIgnoreCase(action)) {
			color = (String)paramMap.get("THEMA_COLOR");
			viewName = "/layout/top";
			
		} else if ("category".equalsIgnoreCase(action)) {
			viewName = viewName+"editCate";
		} else if ("logo".equalsIgnoreCase(action)) {
			viewName = viewName+"editLogo";
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		modelandView.addObject("color", color);

		return modelandView;
	}
}