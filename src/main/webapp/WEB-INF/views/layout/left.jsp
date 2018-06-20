<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="fixed_side" >
<div class="list-group">
	<a class="list-group-item" href="<c:url value='/board/list'/>">Daily
		<span class="badge">48</span>
	</a> <a class="list-group-item" href="<c:url value='/board/list'/>">Food
		<span class="badge">85</span>
	</a> <a class="list-group-item" href="<c:url value='/board/list'/>">Friends
		<span class="badge">32</span>
	</a>
</div>

<!-- 글쓰기 버튼 -->
<div class="text-center">
	<a class="btn btn-primary" type="button" id="insert" name="insert"
		href="<c:url value='/board/edit'/>">ê¸ì°ê¸d°</a>
</div>
<!-- /글쓰기 버튼 -->
</div>