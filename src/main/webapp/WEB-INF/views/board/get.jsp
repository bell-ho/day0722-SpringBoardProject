<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	var action = $("#action");
	
	$("#deleteBtn").on("click",function(e){

		e.preventDefault();
		
		action.attr("action","/board/delete?bno=${b.bno}").attr("method","post");
		action.submit();
	})
	
})

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글 상세</h1>
		<div>
		제목 : <c:out value="${b.title }"></c:out>
		</div>
		
		<div>
		내용 : <c:out value="${b.title }"></c:out>
		</div>
		
		<div>
		작성자 : <c:out value="${b.title }"></c:out>
		</div>
		
		<button onclick="location.href='/board/update?bno=${b.bno}'">수정</button>
		<button id="deleteBtn" type="submit">삭제</button>
		<button onclick="location.href='/board/list'">목록</button>
		
		<form id="action" action="/#" method="post">
			<input type="hidden" value="${b.bno }">
		</form>
</body>
</html>