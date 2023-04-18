<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용</title>
</head>
<body>
    
       
        <h3>글 내용</h3> 
        <p>번호: ${detail.num}</p>
        <p>제목: ${detail.title}</p>
        <p>작성자: ${detail.writer}</p>
        <p>내용: ${detail.content}</p>
        <p>작성일: ${detail.regdate}</p>
    
   

    <a href="#"><button>수정</button></a>
    <a href="#"><button>삭제</button></a>
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/boardForm.js"></script>
</body>
</html>