<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.controller.*, java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${contextPath}/resources/css/boardList.css">

</head>
<body>
	<header>
	
	</header>
    <main>
     	<div>
    		제목<input type="text" name="inputSearch" id="inputSearch">
    		<button type="button" id="inputSearchBtn">검색</button><br><br>
    	 </div>
    	
    	
  		<a href="${contextPath}/board/boardForm" class="boardFormBtn"><button>글쓰기</button></a>
 
       
        <table border="1px solid black">
            <thead>
                <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>날짜</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody id="tbody1">
              <tr id="tr1">
            
            </tr>
            
                <c:choose>
               
                	<c:when test="${empty list}">
               	 <tr>
            		<td colspan="5">검색 결과가 없습니다.</td>
            	</tr>
               		
              	
               	</c:when>
            	<c:otherwise>
            		 
            		<c:forEach var="list" items="${list}">
            		 
            			<tr>	  
                			<td><a href="${contextPath}/board/boardDetail?num=${detail.num}">${list.num}</a>
                			<td><a href="${contextPath}/board/boardDetail?num=${detail.num}">${list.title}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${detail.num}">${list.writer}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${detail.num}">${list.regdate}</a></td>
                			<td><a href="${contextPath}/board/boardDetail?num=${detail.num}">${list.cnt}</a></td>
                		</tr>
                	</c:forEach>
                		 
            	</c:otherwise>
                </c:choose>
                
                	
            </tbody>
        </table>

    </main>
 
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	  <script src="${contextPath}/resources/js/boardForm.js"></script>

</body>
</html>