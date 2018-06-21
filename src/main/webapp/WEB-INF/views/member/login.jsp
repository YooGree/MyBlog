<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col-sm-8 text-left">

	<h3>로그인</h3>
	<c:if test="${not empty param.fail }">
	<!-- <p style="color: red" align="center">로그인 실패</p> -->
		<script>
		alert("로그인 실패");
		</script>
	</c:if>
	<form class="form-horizontal" action="<c:url value='/j_spring_security_check'/>" method="POST">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">이메일:</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="email"
					placeholder="Enter email" name="email">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="pwd">비밀번호:</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="password"
					placeholder="Enter password" name="password">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label> &nbsp&nbsp <a href="<c:url value='/member/signup'/>">회원가입</a>
				</div>
			</div>

		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Login</button>
			</div>
		</div>
	</form>
</div>
