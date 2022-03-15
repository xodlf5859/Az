<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	console.log("test");
function write() {
	
}

</script>

<h3>A/S 게시판 목록</h3>
<div>
	<table>
		<tr>
			<td>구분</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
			<td>조회수</td>
			<td>답변여부</td>
		</tr>
		<c:forEach var="var" items="${asList}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td><a href="/asBoard/detail/${var.asIdx}">${var.asTitle}</a></td>
				<td>${var.asDate}</td>
				<td>${var.asName}</td>
				<td>아직</td>
				<td>안정함</td>
			</tr>
		</c:forEach>
		
	</table>
	<button type="button" onclick="location.href='/asBoard/write'">글쓰기</button>
</div>
<h3>페이지네이션 언제할래?</h3>

</body>
</html>