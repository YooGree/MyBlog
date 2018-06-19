<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- navbar top -->
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div id="navbar_container" class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/' />">Logo</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="<c:url value='/'/>">Home</a></li>
				<li><a href="<c:url value='/mypage'/>">MyPage</a></li>
				<li><a href="<c:url value='/setting' />">Setting</a></li>
				<li><a href="<c:url value='/search' />">Search</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
					String user = (String) session.getAttribute("userID");
					String host = request.getContextPath();
					if (user != null) {
				%>
				<li><a href="<%=host%>/sessions/logout.jsp"><%=user%></a></li>
				<%
					} else {
				%>
				<li><a href="<c:url value='/loginForm' />"> Login</a></li>
				<li><a href="<c:url value='/SignUp'/>"> Sign up</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
</nav>
<!-- /.navbar-top-links -->