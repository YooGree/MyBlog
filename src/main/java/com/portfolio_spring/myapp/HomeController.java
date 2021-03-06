package com.portfolio_spring.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
	@RequestMapping(value = "/layout/top", method = {RequestMethod.GET, RequestMethod.POST})
	public String top(Locale locale, Model model) {
		
		return "/layout/top";
	}
	
}
