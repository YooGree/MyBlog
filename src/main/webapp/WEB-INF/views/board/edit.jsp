<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>

<div class="panel panel-default" style="padding: 2%;">
	<form style="margin: 2%;" role="form" class="form-horizontal"
		method="POST" action="<c:url value='/board/insert' />">

		<h3 class="text-center">포스트쓰기</h3>
		<hr>
		
		<!-- BOARD_SEQ,  BOARD_DATE-->
		<div class="form-group row">
			<%-- <div class="col-sm-6">
				<label for="staticEmail" class="col-form-label">BOARD_SEQ</label> <input
					name="BOARD_SEQ" type="text" class="form-control" id="staticEmail"
					value="${paramMap.BOARD_SEQ}" readonly>
			</div> --%>
			<div class="col-sm-6">
				<label for="staticEmail" class="col-form-label">BOARD_DATE</label> 
				<input name="BOARD_DATE" type="text" class="form-control" id="staticEmail"
					value="${paramMap.BOARD_DATE}" readonly>
			</div>
		</div>
		<!-- / BOARD_SEQ, BOARD_DATE -->
		
		<!-- 작성자 -->
		<div class="form-group row">
			<label for="staticEmail" class="col-form-label">작성자</label>
			<input name="MEMBER_SEQ" type="text" readonly class="form-control"
				id="staticEmail" value="1001" >
		</div>
		<!-- / 작성자 -->
		
		<!-- 제목 -->
		<div class="form-group row">
			<label for="staticEmail" class="col-form-label">제목</label>
			<input name="BOARD_TITLE" type="text" class="form-control">
		</div>
		<!-- / 제목 -->
		
		<!-- 카테고리 -->
		<div class="form-group">
			<label for="exampleSelect1">카테고리 선택</label> 
			<select	name="CATEGORY_SEQ" class="form-control" id="exampleSelect1">
				<option value="1">Daily</option>
				<option value="2">Food</option>
				<option value="3">Friends</option>
			</select>
		</div>
		<!-- /카테고리 -->

		<!-- 내용 -->
		<div class="form-group">
			<label for="exampleTextarea">내용</label>
			<textarea name="BOARD_CONT" class="form-control" id="exampleTextarea" rows="15"></textarea>
			<script>CKEDITOR.replace('exampleTextarea');</script>
		</div>
		<!-- /내용 -->

		<!-- 첨부파일
		<div class="form-group">
			<label for="exampleInputFile">첨부파일 선택</label> <input type="file"
				class="form-control-file" id="exampleInputFile"
				aria-describedby="fileHelp"> <small id="fileHelp"
				class="form-text text-muted"></small>
		</div>
		/첨부파일 -->
		


		<button type="submit" class="btn btn-primary">저장</button>

	</form>

</div>




