<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

			<div class="col-sm-8 text-left">
				<h3>회원가입</h3>
				<form role="form" class="form-horizontal" method="POST" action="<c:url value='/member/insert' />"  onsubmit="return valid_password(this);">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이메일 주소:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" placeholder="email@example.com" name="MEMBER_ID">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">이름:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="MEMBER_NAME" placeholder="your name" name="MEMBER_NAME">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="MEMBER_PW" placeholder="password" name="MEMBER_PW">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="MEMBER_PW2" placeholder="password" name="MEMBER_PW2">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">전화번호:</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="mobile" placeholder="010-0000-0000" name="MEMBER_TEL">
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">생년월일:</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="birth" placeholder="yy-mm-dd" name="MEMBER_BIRTH">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">취미:</label>
						<div class="col-sm-10">
							<select  class="form-control" id="hobby" placeholder="hobby" name="HOBBY_SEQ">
								<option>선택하시오</option>
								<option value="1">운동</option>
								<option value="2">독서</option>
								<option value="3">영화감상</option>
								<option value="4">기타</option>
							</select>
						</div>
					</div>
					<div class="form-check">
						<label class="control-label col-sm-2" for="pwd">거주지:</label>
						<div class="col-sm-10">
						<label class="form-check-label"> 
							<input type="radio"  id="gyeonggi" value="경기도" name="MEMBER_RESI"> 경기도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="chungcheong" value="충청도" name="MEMBER_RESI"> 충청도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="gangwon" value="강원도" name="MEMBER_RESI"> 강원도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="jeolla" value="전라도" name="MEMBER_RESI"> 전라도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="gyeongsang" value="경상도" name="MEMBER_RESI"> 경상도
						</label>
						<label class="form-check-label"> 
							<input type="radio"  id="etc" value="기타" name="MEMBER_RESI"> 기타
						</label>
							
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
				<script>
					function valid_password(form) {
						if (form.MEMBER_PW.value == form.MEMBER_PW2.value) {
							alert("회원가입 완료.");
							return true;
						}
						form.MEMBER_PW2.focus();
						alert("비밀번호를 확인해주세요.");
						return false;
					}
				</script>
			</div>
