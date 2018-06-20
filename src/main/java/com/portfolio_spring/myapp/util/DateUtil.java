package com.portfolio_spring.myapp.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Component;

// 중복되어 발생하는 primary key를 방지하기 위해서
@Component
public class DateUtil {
	
	public String getSysdate() {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		String date = sdf.format(d).toString();
		return date;
	}
}
