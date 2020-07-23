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

	var search = $("#search");

	$("#search button").on("click",function(e){

		if(!search.find("option:selected").val()){
			alert("검색 종류 선택")
			return false;
		}

		if(!search.find("input[name='keyword']").val()){
			alert("키워드 입력")
			return false;
		}
		search.find("input[name='pagenum']").val("1");
		e.preventDefault();

		search.submit();
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
		
		<div class="row">
                       	<div class="col-lg-12">
                       		
                       		<form action="/board/list" method="get" id="search">
                       			<select name='type'>
									<option value=""
									<c:out value="${pagemaker.criteria.type == null?'selected':'' }"/>>--</option>
									<option value="T"
									<c:out value="${pagemaker.criteria.type eq 'T'?'selected':'' }"/>>제목</option>
									<option value="C"
									<c:out value="${pagemaker.criteria.type eq 'C'?'selected':'' }"/>>내용</option>
									<option value="W"
									<c:out value="${pagemaker.criteria.type eq 'W'?'selected':'' }"/>>작성자</option>
									<option value="TC"
									<c:out value="${pagemaker.criteria.type eq 'TC'?'selected':'' }"/>>제목 or 내용</option>
									<option value="TW"
									<c:out value="${pagemaker.criteria.type eq 'TW'?'selected':'' }"/>>제목 or 작성자</option>
									<option value="TWC"
									<c:out value="${pagemaker.criteria.type eq 'TWC'?'selected':'' }"/>>제목 or 내용 or 작성자</option>
								</select>
                       			<input type="text" name="keyword" value="${pagemaker.criteria.keyword }"/>
                       			<input type="hidden" name="pagenum" value="${pagemaker.criteria.pagenum }">
								<input type="hidden" name="amount" value="${pagemaker.criteria.amount }">
       							<button class="btn btn-default">검색</button>
                       		</form>
                       		
                       	</div>
                       </div>
		
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
	<input type="hidden" name="type" value='<c:out value="${pagemaker.criteria.type }"></c:out>'>
	<input type="hidden" name="keyword" value='<c:out value="${pagemaker.criteria.keyword }"></c:out>'>
</form>

</body>
</html>