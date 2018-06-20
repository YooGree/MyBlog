<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 목록보기 collapse -->
<div class="panel panel-default">
	<div class="panel-body">
		<h5 class="col-sm-10">Food</h5>
		<button id="cate_names" type="button" class="btn col-sm-2"
			data-toggle="collapse" data-target="#demo">목록보기</button>
	</div>

	<div id="demo" class="panel-body collapse list-group">
		<a href="#" class="list-group-item">불닭볶음면 <span class="badge">12</span> </a> 
		<a href="#"	class="list-group-item">쌀국수 <span class="badge">12</span> </a> 
		<a href="#" class="list-group-item">매일두유 <span class="badge">12</span> </a>
	</div>
</div>
<!-- /목록보기 collapse -->

<!--  게시물내용 -->
<div id="board_content" class="panel panel-default">

	<div class="text-center">
		<h5>Food</h5>
	</div>

	<div class="text-center">
		<h2>만두 그라탕</h2>
	</div>

	<div class="row">
		<p class="col-sm-2 text-center">2018-06-20</p>
		<div class="col-sm-8"></div>
		<div class="col-sm-2 text-center">
			<a>수정</a> <a>삭제</a>
		</div>
	</div>

	<div class="well">
	<p>
		Contrary to popular belief, Lorem Ipsum is not
		simply random text. It has roots in a piece of classical Latin
		literature from 45 BC, making it over 2000 years old. Richard
		McClintock, a Latin professor at Hampden-Sydney College in Virginia,
		looked up one of the more obscure Latin words, consectetur, from a
		Lorem Ipsum passage, and going through the cites of the word in
		classical literature, discovered the undoubtable source. Lorem Ipsum
		comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
		Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.
		This book is a treatise on the theory of ethics, very popular during
		the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
		amet..", comes from a line in section 1.10.32.
	</p>
	<img src='<c:url value='/resources/image/mandu.jpg' />'>
	<p>
		Contrary to popular belief, Lorem Ipsum is not
		simply random text. It has roots in a piece of classical Latin
		literature from 45 BC, making it over 2000 years old. Richard
		McClintock, a Latin professor at Hampden-Sydney College in Virginia,
		looked up one of the more obscure Latin words, consectetur, from a
		Lorem Ipsum passage, and going through the cites of the word in
		classical literature, discovered the undoubtable source. Lorem Ipsum
		comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et
		Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.
		This book is a treatise on the theory of ethics, very popular during
		the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
		amet..", comes from a line in section 1.10.32.
	</p>
	</div>

</div>




<!-- 댓글 collapse-->
<div class="panel panel-default">
	<div class="panel-body">
		<h5 class="col-sm-10">Food</h5>
		<button id="cate_names" type="button" class="btn col-sm-2"
			data-toggle="collapse" data-target="#demo_comments">댓글보기</button>
	</div>

	<div id="demo_comments" class="panel-body collapse list-group">
		<a href="#" class="list-group-item">불닭볶음면 </a> 
		<a href="#"	class="list-group-item">쌀국수</a> 
		<a href="#" class="list-group-item">매일두유</a>
	</div>
</div>

<!-- / 댓글 collapse-->





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

