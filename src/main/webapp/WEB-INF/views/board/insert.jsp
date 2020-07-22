<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>글쓰기</h1>
	<div class="table-responsive">
		<form action="/board/insert" method="post">
			
			<div class="form-group">
				<label >제목 : </label><br>
				<input type="text" name="title" required="required">
			</div>
			
			<div class="form-group">
			<label  class="control-label col-sm-2">내용 : </label><br>
			<textarea rows="10" cols="80" name="content" required="required"></textarea>
			</div>
			
			<div class="form-group">
				<label>작성자 : </label>
				 <input type="text" name="writer"required="required">
			</div>
			
			<div class="form-group">
				<div class="panel-footer">
					<button type="submit">등록</button>
					<button type="reset">취소</button>
					<button onclick="loction.href='/board/list'" type="button">목록</button>
				</div>
			</div>
			
		</form>
	</div>
</div>
</body>
</html>