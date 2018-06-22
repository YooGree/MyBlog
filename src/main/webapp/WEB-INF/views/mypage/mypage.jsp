<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	function valid_password(form) {
		if (form.MEMBER_PW.value == form.MEMBER_PW2.value) {
			alert("수정 완료");
			return true;
		}
		form.MEMBER_PW2.focus();
		alert("비밀번호를 확인해주세요.");
		return false;
	}
</script>

<div class="col-sm-2 sidenav"></div>
<div class="col-sm-8 text-left">
	<h3>내정보 변경</h3>
	<form class="form-horizontal" action="<c:url value='/member/update'/>" onsubmit="return valid_password(this);">
		<input type="hidden" name="MEMBER_SEQ" value="${resultMap.MEMBER_SEQ}">
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">이메일:</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="MEMBER_ID"
					placeholder="My email" name="MEMBER_ID"
					value="${resultMap.MEMBER_ID}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2" for="email">이름:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="MEMBER_NAME"
					placeholder="My name" name="MEMBER_NAME"
					value="${resultMap.MEMBER_NAME}">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">전화번호:</label>
			<div class="col-sm-10">
				<input type="tel" class="form-control" id="MEMBER_TEL"
					placeholder="My mobile" name="MEMBER_TEL"
					value="${resultMap.MEMBER_TEL}">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">생년월일:</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="MEMBER_BIRTH"
					placeholder="My birth" name="MEMBER_BIRTH"
					value="${resultMap.MEMBER_BIRTH}">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="password">변경 비밀번호:</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="MEMBER_PW"
					value="">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="password">변경 비밀번호
				재입력:</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="MEMBER_PW2"
					value="">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="submit" class="btn btn-primary"
					formaction="<c:url value=''/>">회원탈퇴</button>
			</div>
		</div>
	</form>
</div>
