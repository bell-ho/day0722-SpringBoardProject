<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>리스트</h1>
	<table border="1">
		<tr>
			<td>번호<td><br>
			<td>작성자<td><br>
			<td>제목<td><br>
			<td>등록일<td><br>
		</tr>
		
		<c:forEach var="list" items="${list }">
			<td>
			<c:out value="${list.bno }"></c:out>
			</td>
			<td>
			<c:out value="${list.writer }"></c:out>
			</td>
			<td>
			<c:out value="${list.title }"></c:out>
			</td>
			<td>
			<fmt:formatDate value="${list.regdate }"/>
			</td>
		</c:forEach>
		
	</table>
</body>
</html>