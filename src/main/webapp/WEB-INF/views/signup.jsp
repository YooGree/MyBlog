<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>



	
			<div class="col-sm-8 text-left">
				<h3>회원가입</h3>
				<form class="form-horizontal" action="#" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일 주소:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="email@example.com" name="email">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이름:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" placeholder="your name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd"placeholder="password" name="pwd">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd2" placeholder="password" name="pwd2">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">전화번호:</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="mobile" placeholder="010-0000-0000" name="mobile">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">생년월일:</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="birth" placeholder="yy-mm-dd" name="birth">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">취미:</label>
						<div class="col-sm-10">
							<select  class="form-control" id="hobby" placeholder="hobby" name="hobby">
								<option>선택하시오</option>
								<option>운동</option>
								<option>독서</option>
								<option>영화감상</option>
								<option>기타</option>
							</select>
						</div>
					</div>
					<div class="form-check">
						<label class="control-label col-sm-2" for="pwd">거주지:</label>
						<div class="col-sm-10">
						<label class="form-check-label"> 
							<input type="radio"  id="gyeonggi" value="001" name="live"> 경기도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="chungcheong" value="002" name="live"> 충청도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="gangwon" value="003" name="live"> 강원도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="jeolla" value="004" name="live"> 전라도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="gyeongsang" value="005" name="live"> 경상도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="etc" value="006" name="live"> 기타
						</label>
							
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		

</body>
</html>
