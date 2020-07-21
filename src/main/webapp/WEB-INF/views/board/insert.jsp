<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글쓰기</h1>
	<form action="/board/insert" method="post">
		
		<div>
			제목 : <input type="text" name="title">
		</div>
		<br>
		<div>
		내용 : <textarea rows="5" cols="10" name="content"></textarea>
		</div>
		<br>
		<div>
			작성자 : <input type="text" name="writer">
		</div>
		<br>
		<button type="submit">등록</button>
		<button type="reset">취소</button>
		<button onclick="loction.href='/board/list'" type="button">목록</button>
	</form>
</body>
</html>