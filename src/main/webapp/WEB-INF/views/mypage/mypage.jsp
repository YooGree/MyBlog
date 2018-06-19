<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<!-- 	<div class="col-sm-2 sidenav">
				  <p><a href="info.jsp">내 정보 변경</a></p>
     			 <p><a href="checkPwBeforeChanePw.jsp">비밀번호 변경</a></p>
     			  <p><a href="#">회원 탈퇴</a></p>
			</div> -->
			<div class="col-sm-8 text-left">
				<h3>내정보 변경</h3>
				<form class="form-horizontal" action="/action_page.php">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="My email" name="email" disabled="disabled">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이름:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" placeholder="My name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">전화번호:</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="mobile" placeholder="My mobile" name="mobile">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">생년월일:</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="birth" placeholder="My birth" name="birth">
						</div>
					</div>
				
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">수정</button>
						</div>
					</div>
				</form>
			</div>
