<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
            <a class="btn btn-primary" type="button" id="insert"
               name="insert"
               href="<c:url value='/board/edit'/>">글쓰기</a>
            

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
           


       
        

