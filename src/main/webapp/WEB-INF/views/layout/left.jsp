<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="fixed_side" >
<div class="list-group text-center">
	<a class="left_cate list-group-item" href="<c:url value='/board/list?CATEGORY_SEQ=1&CATEGORY_NAME=Daily'/>">Daily
		<!-- <span class="badge">48</span> -->
	</a> <a class="left_cate list-group-item" href="<c:url value='/board/list?CATEGORY_SEQ=2&CATEGORY_NAME=Food'/>">Food
		<!-- <span class="badge">85</span> -->
	</a> <a class="left_cate list-group-item" href="<c:url value='/board/list?CATEGORY_SEQ=3&CATEGORY_NAME=Friends'/>">Friends
		<!-- <span class="badge">32</span> -->
	</a>
</div>

<!-- 글쓰기 버튼 -->
<div class="text-center">
	<a class="btn btn-primary" type="button" id="insert" name="insert"
		href="<c:url value='/board/edit'/>">포스트쓰기</a>
</div>
<!-- /글쓰기 버튼 -->
</div>