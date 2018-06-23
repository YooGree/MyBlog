<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

      <h1>edit logo</h1>
      <div class="col-sm-8 text-left">
				<h3>로고 변경</h3>
				<form role="form" class="form-horizontal" method="POST" action="<c:url value='/settings/logoChange'/>">
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" class="form-control" name="LOGO_NAME">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">로고변경</button>
							<button type="button" class="btn btn-primary">취소</button>
						</div>
					</div>
				</form>
			</div>

