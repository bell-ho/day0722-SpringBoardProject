<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>댓글 수정</h1>
	<section>
	<form id="updateForm" action="/reply/update" method="post">
		<input type="hidden" name="bno" value="${reply.bno }">
		<input type="hidden" name="rno" value="${reply.rno }">
		<input type="hidden" name="updatedate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${reply.updatedate }"/>'>
		작성자 : <input type="text" name="replyer" value="${reply.replyer }" readonly="readonly"><br>
		댓글 내용 : <br>
		<textarea name="reply" rows="3" cols="80" name="replyer" >${reply.reply }</textarea><br>
		<button class="replybtn" >수정</button>
	</form>
	</section>
</body>
</html>