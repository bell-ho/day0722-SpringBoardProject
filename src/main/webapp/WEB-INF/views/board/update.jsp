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
<h1>글수정</h1>

	<form action="/board/update" method="post">
		<input type="hidden" name="bno" value="${b.bno }">
		제목 : <input type="text" name="title" value="${b.title }"><br>
		내용 : <br>
		<textarea rows="10" cols="80" name="content">${b.content }</textarea><br>
		작성자 : <input readonly="readonly" type="text" name="writer" value="${b.writer }"><br>
		마지막 수정 날짜 :
		<input readonly="readonly" name="updatedate" type="text" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${b.updatedate }"/>'><br>
		<button type="submit">수정</button>
	</form>
</body>
</html>