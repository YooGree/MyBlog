<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="layout.header" />
<title><tiles:getAsString name="layout.title" /></title>
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<tiles:insertAttribute name="layout.top" />
			<!-- /.navbar-static-side -->
		</nav>
		<div class="container-fluid text-center">
			<div class="row content">
				<tiles:insertAttribute name="layout.left" />
				<tiles:insertAttribute name="layout.body" />
			</div>
		</div>
		<tiles:insertAttribute name="layout.footer" />
	</div>
	<!-- /#wrapper -->
</body>
</html>