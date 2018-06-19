<!DOCTYPE html>
<html lang="en">
<head>
  <title>MyPage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<body>


  
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				  <p><a href="info.jsp">내 정보 변경</a></p>
     			 <p><a href="#">비밀번호 변경</a></p>
     		 	
			</div>
			<div class="col-sm-8 text-left">
				<h3>비밀번호 변경</h3>
				<form class="form-horizontal" action="/action_page.php">

					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd"placeholder="password" name="pwd">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd2" placeholder="password" name="pwd2">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">수정</button>
						</div>
					</div>
				</form>
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
