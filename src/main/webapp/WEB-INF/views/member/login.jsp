<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col-sm-8 text-left">

	<h3>로그인</h3>
	<form class="form-horizontal" action="/portfolio/loginStatus.jsp"
		method="post">
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
				<input type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="pwd">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label> &nbsp&nbsp <a href="./signup.jsp">회원가입</a>
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
