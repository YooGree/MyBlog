package com.portfolio_spring.myapp.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

// 중복되어 발생하는 primary key를 방지하기 위해서
@Component
public class CommonUtil {
	
	public String getUniqueSequence() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-", "");
	}
}
