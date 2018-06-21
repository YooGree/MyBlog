<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


			<div class="col-sm-8 text-left">
				<h1>Thema Change</h1>
				<h3>Thema Color Select</h3>
				<form role="form" class="form-horizontal" onsubmit="return change_thema(this);">
					<div class="form-group">
						Color: <input class="jscolor" name="change" value="B341F2">
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						<button type="button" class="btn btn-primary">변경</button>
						<button type="button" class="btn btn-default">취소</button>
						</div>
					</div>
				</form>
				<script>
					function change_thema(form) {
						var color = form.change.value; 
						document.getElementById("footer").style.background-color = color;
				</script>
			</div>
