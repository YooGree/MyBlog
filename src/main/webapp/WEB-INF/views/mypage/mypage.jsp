<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		 	<div class="col-sm-2 sidenav">
		 	<script>
				function check() {
					var check = prompt("정말 삭제하시려면 'yes'를 입력 해주세요");
					if(check.equals("yes")) {
						alert("회원정보 삭제");
					} else {
						alert("문자 미일치");
					}
				}	 	
		 	</script>
				<%--   <p><a href="info.jsp">내 정보 변경</a></p>
     			  <p><a href="<c:url value='/mypage/checkPwBeforeChangePw'/>">비밀번호 변경</a></p>
     			  <p><a href="<c:url value='/mypage/delete'/>" onclick="check()">회원 탈퇴</a></p> --%>
			</div>

			<div class="col-sm-8 text-left">
				<h3>내정보 변경</h3>
				<form class="form-horizontal" action="<c:url value='/member/update'/>">
					<input type="hidden" name="MEMBER_SEQ" value="${resultMap.MEMBER_SEQ}">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="MEMBER_ID" placeholder="My email" name="MEMBER_ID" value="${resultMap.MEMBER_ID}">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이름:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="MEMBER_NAME" placeholder="My name" name="MEMBER_NAME" value="${resultMap.MEMBER_NAME}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">전화번호:</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="MEMBER_TEL" placeholder="My mobile" name="MEMBER_TEL" value="${resultMap.MEMBER_TEL}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">생년월일:</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="MEMBER_BIRTH" placeholder="My birth" name="MEMBER_BIRTH" value="${resultMap.MEMBER_BIRTH}">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">수정</button>
								<p><a href="info.jsp">내 정보 변경</a></p>
     			 				<p><a href="<c:url value='/mypage/checkPwBeforeChangePw'/>">비밀번호 변경</a></p>
     			  				<p><a href="<c:url value='/mypage/delete'/>" onclick="check()">회원 탈퇴</a></p>
						</div>
					</div>
				</form>
			</div>
