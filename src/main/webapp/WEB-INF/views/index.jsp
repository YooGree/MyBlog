<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="jumbotron text-center">
	<h1>Yoo Gree's Blog</h1>
	<p>Bootstrap is the most popular HTML, CSS, and JS framework for
		developing responsive, mobile-first projects on the web.</p>
</div>

<!-- 베스트 사진 목록 -->

	<div class="panel panel-default panel-body text-center">
		<h4>Yoo Gree's Best Photos</h4>
		<hr>
		<div class="row">
			      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="<c:url value='/resources/image/mandu.jpg' />" alt="Paris">
          <p><strong>Mandu</strong></p>
          <p>Friday 27 November 2015</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="<c:url value='/resources/image/cat.jpg' />" alt="New York">
          <p><strong>Cat</strong></p>
          <p>Saturday 28 November 2015</p>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="<c:url value='/resources/image/mandu.jpg' />" alt="San Francisco">
          <p><strong>Mandu</strong></p>
          <p>Sunday 29 November 2015</p>
        </div>
      </div>
		</div>
	</div>
<!-- / 베스트 사진 목록 -->

<!-- 베스트 게시물 목록 -->

	<div class="panel panel-default panel-body">
		<h4 align="center">Yoo Gree's Best Posts</h4>
		<div class="list-group">
			<a href="#" class="list-group-item">First item</a> 
			<a href="#"	class="list-group-item">Second item</a> 
			<a href="#"	class="list-group-item">Third item</a>
		</div>
	</div>
<!-- / 베스트 게시물 목록 -->

