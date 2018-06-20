<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="form-group">
	<a class="btn btn-primary" type="button" id="insert" name="insert" href="<c:url value='/board/edit'/>">글쓰기</a>
</div>
<div class="form-group">
	<a>목록보기</a>
</div>
<hr>
<!--  게시물내용 -->
<div>

	<div class="form-group">
		<label><a href="#">카테고리명</a></label>
	</div>
	<div class="form-group">
		<label>게시물제목</label> <label>작성일시</label><a>수정</a><a>삭제 </a>
	</div>
	<div class="form-group">
		<textarea class="form-control" name="text" rows="10" cols="60"
			readonly>내용</textarea>
	</div>

</div>
<hr>

<!-- 게시물제목 -->
<div>
	<table class="table table-hover">
		<tr>
			<td><a href="#">list 01 title</a></td>
			<td>2018-05-16</td>
		</tr>
		<tr>
			<td><a href="#">list 02 title</a></td>
			<td>2018-05-16</td>
		</tr>
		<tr>
			<td><a href="#">list 03 title</a></td>
			<td>2018-05-16</td>
		</tr>
		<tr>
			<td><a href="#">list 04 title</a></td>
			<td>2018-05-16</td>
		</tr>
		<tr>
			<td><a href="#">list 05 title</a></td>
			<td>2018-05-16</td>
		</tr>

	</table>
</div>
<div>
	<ul class="pagination">
		<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
		</li>
		<li class="page-item active"><a class="page-link" href="#">1</a>
		</li>
		<li class="page-item"><a class="page-link" href="#">2</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#">4</a></li>
		<li class="page-item"><a class="page-link" href="#">5</a></li>
		<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
	</ul>
</div>

