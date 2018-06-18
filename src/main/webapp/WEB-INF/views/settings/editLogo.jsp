<!DOCTYPE html>
<html lang="en">
<head>
  <title>Setting</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<body>


  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
       <p><a href="./editTheme.jsp">테마 변경</a></p>
      <p><a href="./editCate.jsp">카테고리 변경</a></p>
      <p><a href="./editLogo.jsp">로고 변경</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>edit logo</h1>
      <div class="col-sm-8 text-left">
				<h3>변경할 로고명 입력</h3>
				<form class="form-horizontal" action="/action_page.php">

					<div class="form-group">
					
						<div class="col-sm-10">
							<input type="text" class="form-control" id="logo" placeholder="현재 로고명" name="loge">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-default" >미리보기</button>
							<button type="button" class="btn btn-primary" >변경</button>
						</div>
					</div>
				</form>
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
