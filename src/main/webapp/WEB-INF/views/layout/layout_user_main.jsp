<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<tiles:insertAttribute name="layout.header" />
	<title><tiles:getAsString name="layout.title" /></title>
</head>
<body>


		<tiles:insertAttribute name="layout.top" />
	
		<div class="container-fluid">
		
			<div id="main_left" class="col-sm-2">
				<tiles:insertAttribute name="layout.left" />
			</div>
			<div id="main_body" class="col-sm-8">
				<tiles:insertAttribute name="layout.body" />
			</div>
			<div id="main_right" class="col-sm-2">
				<tiles:insertAttribute name="layout.right" />
			</div>
	
		</div>
		<%-- <div>
			<tiles:insertAttribute name="layout.footer" />
		</div> --%>

	<!-- /#wrapper -->
</body>
</html>