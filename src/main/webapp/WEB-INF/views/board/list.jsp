<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 첫 화면 ajax -->
<script>
var fn_startBoard = function(url, id, params) {
	$.ajax({
		type : "POST", 
		url : url, 
		data : params, 
		cache: false,
		success : function(data) {
			var formTag = "";
			
			formTag += "<div class='text-center'><h5>"+data.CATEGORY_NAME + "</h5></div>";
			formTag += "<div class='text-center'><h2>"+data.BOARD_TITLE + "</h2></div>";
			formTag += "<div class='row'>";
			formTag += "<p class='col-sm-4 text-center'>"+data.BOARD_DATE+"</p>";
			formTag += "<div class='col-sm-6'></div><div class='col-sm-2 text-center'><a>수정</a><a>삭제</a></div></div>";
			formTag += "<hr>";
			formTag += "<div style='padding: 2%'>"+data.BOARD_CONT+"</div>";
			
			$('#'+id).html(formTag);
		}, 
		error : function(xhr, status, exception){
			alert("Failure \n ("+status+")");
			return false; 
		}
		});
	}

$(document).ready(
			function() {
				fn_startBoard("<c:url value='/ws/firstList'/>", "setBoardContent");
			});
</script>
<!-- /첫 화면 ajax -->

<!-- 목록 클릭 ajax -->
<script>
function list_click(seq){
	fn_setBoard("<c:url value='/ws/content'/>", "setBoardContent",seq); 
	fn_setComment("<c:url value='/board/commentList'/>", "setBoardComment",seq); 
}

var fn_setBoard = function(url, id, params) {
	$.ajax({
		type : "POST", 
		url : url, 
		data : { "BOARD_SEQ" : params }, 
		cache: false,
		success : function(data) {
			var formTag = "";
			
			formTag += "<div class='text-center'><h5>"+data.CATEGORY_NAME + "</h5></div>";
			formTag += "<div class='text-center'><h2>"+data.BOARD_TITLE + "</h2></div>";
			formTag += "<div class='row'>";
			formTag += "<p class='col-sm-4 text-center'>"+data.BOARD_DATE+"</p>";
			formTag += "<div class='col-sm-6'></div><div class='col-sm-2 text-center'><a>수정</a><a>삭제</a></div></div>";
			formTag += "<hr>";
			formTag += "<div style='padding: 2%'>"+data.BOARD_CONT+"</div>";
			
			$('#'+id).html(formTag);
		}, 
		error : function(xhr, status, exception){
			alert("Failure \n ("+status+")");
			return false; 
		}
		});
	}
	
var fn_setComment= function(url, id, params) {
	$.ajax({
		type : "POST", 
		url : url, 
		data : { "BOARD_SEQ" : params }, 
		cache: false,
		success : function(data) {
			var formTag = "";
			
			/* $.each(data, function(i, item) {
					formTag += '<option value="'+item.MEMBER_SEQ+'">'
							+ item.AUTHORITY_ID;
				}); */
			
			formTag += "<div class='panel-group'>";
			$.each(data, function(i, item){
				fomaTag += '<div class="panel panel-default"><div class="panel-heading">';
				fomaTag += '<span>'+item.MEMBER_NAME+'</span>';
				fomaTag += '<span>'+item.MEMBER_DATE+'</span></div>';
				fomaTag += '<div class="panel-body"><p>'+item.COMMENT_CON+'</p></div></div>';
			});
			formTag += "</div>";

			$('#'+id).html(formTag);
		}, 
		error : function(xhr, status, exception){
			alert("Failure \n ("+status+")");
			return false; 
		}
		});
	}
</script>
<!--/ 목록 클릭 ajax -->



<!-- 목록보기 collapse -->
<div class="nav panel panel-default">
	<div class="panel-body">
		<h5 class="col-sm-10">${resultMap.CATEGORY_NAME}</h5>	
		<button id="cate_names" type="button" class="btn col-sm-2"
			data-toggle="collapse" data-target="#demo">목록보기</button>
	</div>

	<div id="demo" class="panel-body collapse list-group">
		<c:forEach items="${resultList}" var="resultData" varStatus="loop">
			<div class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
				<a id="board_list${loop.index}" href="#" class="list-group-item" onclick="list_click('${resultData.BOARD_SEQ}');">
					${resultData.BOARD_TITLE} 
				<span class="badge">12</span>
				</a>

			</div>
		</c:forEach>
		
		
		<div class="text-center">
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

	</div>
</div>
<!-- /목록보기 collapse -->

<!--  게시물내용 -->
<div id="board_content" class="panel panel-default">

	<%-- 	<div class="text-center">
		<h5>${resultMap.CATEGORY_NAME }</h5>
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
	</div>--%>
	
	<div id="setBoardContent"></div>


	<!-- 댓글 collapse-->
	<hr>
	<div class="panel">
		<div class="panel-body">
			<button class="btn" data-toggle="collapse"
				data-target="#demo_comments">댓글보기</button>
		</div>

		<!-- 댓글 목록 -->
		<div id="demo_comments" class="panel-group collapse">
			<%-- <div class="panel-group">
				<c:forEach items="${commentList}" var="resultData" varStatus="loop">
					<div class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span>${resultData.MEMBER_NAME}</span>
								<span>${resultData.COMMENT_DATE}</span>
							</div>
							<div class="panel-body">
								<p>${resultData.COMMENT_CON}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div> --%>
			<div id="setBoardComment"></div>
				<!-- /댓글 목록 -->

				<hr>

				<!-- 댓글입력 -->
				<form action="<c:url value='/board/commentInsert' />">
					<div class="form-group">
							<input name="BOARD_SEQ" type="hidden" class="form-control" value="${resultMap.BOARD_SEQ }">
							<input name="BOARD_SEQ" type="hidden" class="form-control" value="${resultMap.BOARD_TITLE}">
						<textarea name="COMMENT_CON" class="form-control" rows="5" id="comment">${resultMap.BOARD_SEQ }/${resultMap.BOARD_TITLE}</textarea>
					</div>
					<button type="submit" class="btn btn-default btn-xs pull-right">저장</button>
				</form>
				<!-- /댓글입력 -->
			</div>

		</div>

	<!-- / 댓글 collapse-->
</div>
<!--  / 게시물내용 -->

<!-- pagination -->
<div class="text-center">
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
<!-- / pagination -->

