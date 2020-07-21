<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="table-responsive">
	<h1>글수정</h1>
	
			<form action="/board/update" method="post">
				<input type="hidden" name="bno" value="${b.bno }">
				
				<div class="form-group">
					<label >제목 : </label><br>
					<input type="text" name="title" value="${b.title }"><br>
				</div>
				
				<div class="form-group">
					<label  class="control-label col-sm-2">내용 : </label><br>
					<textarea rows="10" cols="80" name="content">${b.content }</textarea><br>
				</div>
				
				<div class="form-group">
					<label>작성자 : </label>
					<input readonly="readonly" type="text" name="writer" value="${b.writer }"><br>
				</div>
				
				<div class="form-group">
					<label>마지막 수정 날짜 : </label>
					<input readonly="readonly" name="updatedate" type="text" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${b.updatedate }"/>'><br>
				</div>
				
				<div class="form-group">
					<div class="panel-footer">
						<button class="btn btn-default" type="submit">수정</button>
						<button class="btn btn-default" onclick="location.href='/board/list'">목록</button>
					</div>
				</div>
			</form>
	</div>
</div>
</body>
</html>