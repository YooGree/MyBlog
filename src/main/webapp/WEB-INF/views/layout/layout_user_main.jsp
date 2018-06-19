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
	<div id="wrapper">

		<tiles:insertAttribute name="layout.top" />
	
		<div id="main_body" class="container-fluid text-center">
			<div class="col-sm-2">
				<tiles:insertAttribute name="layout.left" />
			</div>
			<div class="col-sm-8">
				<tiles:insertAttribute name="layout.body" />
			</div>
			<div class="col-sm-2">
				<tiles:insertAttribute name="layout.right" />
			</div>
		</div>

		<div>
			<tiles:insertAttribute name="layout.footer" />
		</div>
	</div>
	<!-- /#wrapper -->
</body>
</html>