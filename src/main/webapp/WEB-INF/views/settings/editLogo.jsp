<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="col-sm-8 text-left">
	<div class="container">
		<h2>로고 바꾸기</h2>
		<form role="form" class="form-horizontal" method="POST" action="<c:url value='/settings/logoChange'/>">
			<div class="form-group">
				<label for="logo">로고 입력</label> 
				<input type="text" class="form-control" name="LOGO_NAME">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">변경</button>
			</div>
		</form>
	</div>
</div>

