<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


			<div class="col-sm-8 text-left">
				<h1>Thema Change</h1>
				<h3>Thema Color Select</h3>
				<div class="form-group">
					Color: <input class="jscolor" value="B341F2">
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-primary" onclick="change()" >변경</button>
					<button type="button" class="btn btn-default" name="cancle">취소</button>
					</div>
				</div>
				<%
					Cookie cookie = new Cookie("name", "cookiecookierun");//쿠키객체 생성, 쿠키이름과 값 설정
					cookie.setMaxAge(600);//쿠키 생존 기간(600초)
					cookie.setValue("ds");
					response.addCookie(cookie);//생성한 쿠키를 클라이언트로 전송
				%>
				<h2><%=cookie.getName() %></h2>
				<h2><%=cookie.getValue() %></h2>
				<h2><%=cookie.getMaxAge() %></h2>
			</div>
