<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-sm-8 text-left">

		<h2>색깔 바꾸기</h2>
		<form class="form-horizontal" method="POST" action="<c:url value='/settings/themaChange'/>">
			<div class="form-group">
				<label for="thema">색깔 선택</label> 
				<input class="jscolor" name="THEMA_NAME" value="F20000">
			</div>
			<div class="form-group">
			<button type="submit" class="btn btn-primary">변경</button>
			</div>
		</form>

</div>
