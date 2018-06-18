<!DOCTYPE html>
<html lang="en">
<head>
<title>Setting</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="..js/jquery.min.js"></script>
<script src="..js/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../index.jsp">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../index.jsp">Home</a></li>
					<li><a href="../info.jsp">MyPage</a></li>
					<li><a href="../setting.jsp">Setting</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../login.jsp"> Login</a></li>
					<li><a href="../signup.jsp"> Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="./editTheme.jsp">테마 변경</a>
				</p>
				<p>
					<a href="./editCate.jsp">카테고리 변경</a>
				</p>
				<p>
					<a href="./editLogo.jsp">로고 변경</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<h1>edit categoly</h1>
				<div class="list-group">
				<ul>
					<li>Daily</li>
					<li>Food</li>
					<li>Friends</li>

				</ul>
				</div>
				<div>
				<button class="btn btn-default" id="add">추가</button>
				<button class="btn btn-default" id="change">수정</button>
				<button class="btn btn-default" id="delete">삭제</button>
				</div>

				
			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>

	

</body>
</html>
