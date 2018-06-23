<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

			<div class="col-sm-8 text-left">
				<h1>색깔 바꾸기</h1>
				<h3>색 선택</h3>
				<form class="form-horizontal" method="POST" action="<c:url value='/settings/themaChange'/>">
					<div class="form-group">
						Color: <input class="jscolor" name="THEMA_NAME" value="F20000">
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">변경</button>
						</div>
					</div>
				</form>
			</div>
