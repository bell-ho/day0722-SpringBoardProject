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

	<div>
		<button onclick="location.href='/board/insert'" >글쓰기</button>
	</div>

	<table border="1">
		<tr>
			<td>번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>등록일</td>
		</tr>
		
		<c:forEach var="list" items="${list }">
		<tr>
			<td>
			<c:out value="${list.bno }"></c:out>
			</td>
			
			<td>
			<c:out value="${list.writer }"></c:out>
			</td>
			
			<td>
			<a href="/board/get?bno=${list.bno }">${list.title }</a>
			</td>
			
			<td>
			<fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate }"/>
			</td>
		</tr>
		</c:forEach>
		
	</table>
</body>
</html>