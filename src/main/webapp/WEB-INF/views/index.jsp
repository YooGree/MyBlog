<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<div class="col-sm-8 text-left">

            <h1>Welcome</h1>

            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
               do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
               enim ad minim veniam, quis nostrud exercitation ullamco laboris
               nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat
               cupidatat non proident, sunt in culpa qui officia deserunt mollit
               anim id est laborum consectetur adipiscing elit, sed do eiusmod
               tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
               minim veniam, quis nostrud exercitation ullamco laboris nisi ut
               aliquip ex ea commodo consequat.</p>
            <input class="btn btn-primary" type="button" id="insert"
               name="insert" value="글쓰기"
               onclick="location.href='./notice/insert.jsp'">
            <hr>

            <p>조회수 많은 게시물 리스트</p>
            <!-- 게시물 목록 -->
            <div>
               <table class="table table-hover">
                  <tr>
                     <td><a href="#">list 01 title</a></td>
                     <td>2018-05-16</td>
                  </tr>
                  <tr>
                     <td><a href="#">list 02 title</a></td>
                     <td>2018-05-16</td>
                  </tr>
                  <tr>
                     <td><a href="#">list 03 title</a></td>
                     <td>2018-05-16</td>
                  </tr>
                  <tr>
                     <td><a href="#">list 04 title</a></td>
                     <td>2018-05-16</td>
                  </tr>
                  <tr>
                     <td><a href="#">list 05 title</a></td>
                     <td>2018-05-16</td>
                  </tr>

               </table>
            </div>
            <div>
               <ul class="pagination">
                  <li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
                  </li>
                  <li class="page-item active"><a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                  </li>
               </ul>
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



</body>
</html>
