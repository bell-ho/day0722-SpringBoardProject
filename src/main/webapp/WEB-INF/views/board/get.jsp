<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp" %>
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
<div class="container">

<h1>글 상세</h1>
	<div class="panel panel-default">
		<div class="form-group">
		<label>제목 : </label>
		<c:out value="${b.title }"></c:out>
		</div>
		
		<div class="form-group">
		<label>내용 : </label>
		<c:out value="${b.content }"></c:out>
		</div>
		
		<div class="form-group">
		<label>작성자 : </label>
		<c:out value="${b.writer }"></c:out>
		</div>
	
		<div class="panel-footer">
			<button class="btn btn-default" onclick="location.href='/board/update?bno=${b.bno}&pagenum=${criteria.pagenum}&amount=${criteria.amount }&type=${criteria.type }&keyword=${criteria.keyword }'">수정</button>
				
			<button class="btn btn-default" id="deleteBtn" type="submit">삭제</button>
			
			<button class="btn btn-default" onclick="location.href='/board/list?pagenum=${criteria.pagenum}&amount=${criteria.amount }&type=${criteria.type }&keyword=${criteria.keyword }'">목록</button>
		</div>
		
	</div>
		
		<form id="action" action="/#" method="post">
			<input type="hidden" value="${b.bno }">
			<input type="hidden" name="pagenum" value="${criteria.pagenum }">
			<input type="hidden" name="amount" value="${criteria.amount }">
			<input type="hidden" name="type" value='<c:out value="${criteria.type }"></c:out>'>
       		<input type="hidden" name="keyword" value='<c:out value="${criteria.keyword }"></c:out>'>
		</form>
		
</div>

</body>
</html>