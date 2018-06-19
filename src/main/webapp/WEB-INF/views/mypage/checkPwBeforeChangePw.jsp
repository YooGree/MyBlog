<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

			<div class="col-sm-2 sidenav">
				  <p><a href="info.jsp">ë´ ì ë³´ ë³ê²½</a></p>
     			 <p><a href="#">ë¹ë°ë²í¸ ë³ê²½</a></p>
     		 	
			</div>
			<div class="col-sm-8 text-left">
				<h3>íì¬ ë¹ë°ë²í¸ ìë ¥</h3>
				<form class="form-horizontal" action="/action_page.php">

					<div class="form-group">
					
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd" placeholder="Enter Password" name="pwd">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-default" onclick="location.href='changePw.jsp'">íì¸</button>
						</div>
					</div>
				</form>
			</div>
