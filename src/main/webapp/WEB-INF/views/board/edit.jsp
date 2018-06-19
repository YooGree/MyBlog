<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://cdn.ckeditor.com/4.9.2/standard/ckeditor.js"></script>
<form>
	<fieldset>
		<legend>포스트쓰기</legend>
		<div class="form-group row">
			<label for="staticEmail" class="col-sm-2 col-form-label">작성자</label>
			
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="email@example.com" disabled="disabled">
			
		</div>

		<div class="form-group">
			<label for="exampleSelect1">카테고리 선택</label> <select
				class="form-control" id="exampleSelect1">
				<option>Daily</option>
				<option>Food</option>
				<option>Friends</option>

			</select>
		</div>

		<div class="form-group">
			<label for="exampleTextarea">내용</label>
			<textarea class="form-control" id="exampleTextarea" rows="15"></textarea>
			<script>
				CKEDITOR.replace('exampleTextarea');
			</script>
		</div>
		<div class="form-group">
			<label for="exampleInputFile">File input</label> <input type="file"
				class="form-control-file" id="exampleInputFile"
				aria-describedby="fileHelp"> <small id="fileHelp"
				class="form-text text-muted"></small>
		</div>
		<fieldset class="form-group">
			<label for="exampleSelect1">설정정보</label>
			<div class="form-check">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="optionsRadios" id="optionsRadios1"
					value="option1" checked> 전체공개
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="optionsRadios" id="optionsRadios2"
					value="option2"> 비공개
				</label>
			</div>

		</fieldset>

		<button type="submit" class="btn btn-primary">저장</button>
	</fieldset>
</form>


