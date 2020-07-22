<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){

	var action = $("#action");
	
	$(".paginate_button a").on("click" ,function(e){
		e.preventDefault();

		action.find("input[name='pagenum']").val($(this).attr("href"));
		action.submit();
	})

	$(".move").on("click",function(e){
		e.preventDefault();
		action.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
		action.attr("action","/board/get");
		action.submit();
	})
})
</script>
</head>
<body>


<div class="container">
<h1>글 목록</h1>
<div class="panel panel-default">
	<div class="table-responsive">
		<table class="table table-hover">
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
				<a class="move" href="${list.bno }">${list.title }</a>
				</td>
				
				<td>
				<fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate }"/>
				</td>
			</tr>
			</c:forEach>
		</table>
		</div>
	</div>
	
	<div class="panel-footer">
		<button class="btn btn-default" onclick="location.href='/board/insert'" >글쓰기</button>
		
		<div class="pull-right">
			<ul class="pagination">
				
				<c:if test="${pagemaker.prev }">
					<li class="paginate_button previous">
					<a href="${pagemaker.startpage -1 }">이전</a>
					</li>
				</c:if>
				
				<c:forEach var="num" begin="${pagemaker.startpage }" end="${pagemaker.endpage }">
					<li class="paginate_button ${pagemaker.criteria.pagenum == num ? "acticv":""}">
					<a href="${num }">${num }</a></li>
				</c:forEach>
				
				<c:if test="${pagemaker.next }">
					<li class="paginate_button next">
					<a href="${pagemaker.endpage +1 }">다음</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</div>

<form id="action" action="/board/list" method="get">
	<input type="hidden" name="pagenum" value="${pagemaker.criteria.pagenum }">
	<input type="hidden" name="amount" value="${pagemaker.criteria.amount }">
</form>

</body>
</html>