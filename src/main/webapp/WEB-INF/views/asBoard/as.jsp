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
		<c:forEach var="list" items="d" begin="0" end="5">
			<tr>
				<td>1</td>
				<td><a href="#">제목</a>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>
			</tr>
		</c:forEach>
		
	</table>
	<button type="button" onclick="location.href='/as/write'">글쓰기</button>
</div>
<h3>페이지네이션 언제할래?</h3>

</body>
</html>