<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-sm-8 text-left">
	
		<h2>테마, 로고변경</h2>
		<div class="list-group">
			<a href="<c:url value='/settings/thema'/>" class="list-group-item">테마변경</a> 
			<a href="<c:url value='/settings/logo'/>" class="list-group-item">로고변경</a>
		</div>
	
</div>

