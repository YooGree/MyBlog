<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
			<c:set var="principalName" value="${pageContext.request.userPrincipal.name}"/>
			<ul class="nav navbar-nav">
				<li><a href="<c:url value='/'/>">Home</a></li>
				<li><a href="<c:url value='/board/list'/>">Board</a></li>
				<li><a href="<c:url value='/member/mypage?MEMBER_SEQ=${principalName}'/>">MyPage</a></li>
				<li><a href="<c:url value='/settings/setting' />">Setting</a></li>
				<li><a href="<c:url value='/board/search' />">Search</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="user" />
				</sec:authorize>
				<sec:authorize access="!isAuthenticated()">
					<sec:authentication property="principal" var="user" />
				</sec:authorize>

				<c:choose>
   				 	<c:when test="${user != '' && user ne null}">
   				 	    <li><a href="<c:url value='/member/login'/>">Login</a></li>
        				<li><a href="<c:url value='/member/signup'/>">Signup</a></li>
    				</c:when>
    				<c:otherwise>
    					<li><a href="<c:url value='/j_spring_security_logout' />">${user}님 환영합니다.</a></li>
    				</c:otherwise>
				</c:choose> 
				
  				<li><a href="<c:url value='/j_spring_security_logout' />">${principalName}</a></li>
<%-- 				<li><a href="<c:url value='/member/login' />"> Login</a></li>
				<li><a href="<c:url value='/member/signup'/>"> Sign up</a></li> --%>
			</ul>
		</div>
	</div>
</nav>
<!-- /.navbar-top-links -->