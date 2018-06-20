<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  게시물내용 -->
<div id="board_content" class="panel panel-default">

	<div class="text-center">
		<h5>Food</h5>
	</div>

	<div class="text-center">
		<h2>${resultMap.BOARD_TITLE}</h2>
	</div>

	<div class="row">
		
		<p class="col-sm-4 text-center">${resultMap.BOARD_DATE}</p>
		<div class="col-sm-6"></div>
		<div class="col-sm-2 text-center">
			<a>수정</a> <a>삭제</a>
		</div>
	</div>
	<hr>
	<div class="well">
		${resultMap.BOARD_CONT}

		<%-- <p>Contrary to popular belief, Lorem Ipsum is not simply random
			text. It has roots in a piece of classical Latin literature from 45
			BC, making it over 2000 years old. Richard McClintock, a Latin
			professor at Hampden-Sydney College in Virginia, looked up one of the
			more obscure Latin words, consectetur, from a Lorem Ipsum passage,
			and going through the cites of the word in classical literature,
			discovered the undoubtable source. Lorem Ipsum comes from sections
			1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes
			of Good and Evil) by Cicero, written in 45 BC. This book is a
			treatise on the theory of ethics, very popular during the
			Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
			amet..", comes from a line in section 1.10.32.</p>
		<img src='<c:url value='/resources/image/mandu.jpg' />'>
		<p>Contrary to popular belief, Lorem Ipsum is not simply random
			text. It has roots in a piece of classical Latin literature from 45
			BC, making it over 2000 years old. Richard McClintock, a Latin
			professor at Hampden-Sydney College in Virginia, looked up one of the
			more obscure Latin words, consectetur, from a Lorem Ipsum passage,
			and going through the cites of the word in classical literature,
			discovered the undoubtable source. Lorem Ipsum comes from sections
			1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes
			of Good and Evil) by Cicero, written in 45 BC. This book is a
			treatise on the theory of ethics, very popular during the
			Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
			amet..", comes from a line in section 1.10.32.</p> --%>
	</div>


	<!-- 댓글 collapse-->
	<div class="panel">
		<div class="panel-body">
			<button class="btn" data-toggle="collapse"
				data-target="#demo_comments">댓글보기</button>
		</div>

		<div id="demo_comments" class="panel-body collapse list-group">
			<a href="#" class="list-group-item">불닭볶음면 </a> <a href="#"
				class="list-group-item">쌀국수</a> <a href="#" class="list-group-item">매일두유</a>
		</div>
	</div>

	<!-- / 댓글 collapse-->
</div>
<!--  / 게시물내용 -->