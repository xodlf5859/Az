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
function answer() {
	location.href="/asboard/asAnswer";
	
	
// 	var chkList = document.querySelectorAll("input[name=asIdx]:checked");
// 	chkList.forEach(function (ch) {
// 	    console.log(ch.value);
// 	    var asIdx = ch.value
	    
// 	    document.frm.action = "/asboard/asAnswer";
// 	    document.frm.method = "post";
// 	    document.frm.submit(asIdx);

// 	});
}


</script>

<h3>A/S 게시판 목록</h3>
<div>
<form>
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
				<td><input type="checkbox" name="asIdx" value="${var.asIdx}"></td>
				<td><a href="/asBoard/detail/${var.asIdx}">${var.asTitle}</a></td>
				<td>${var.asDate}</td>
				<td>${var.asName}</td>
				<td>아직</td>
				<td>${var.asStatus}</td>
			</tr>
		</c:forEach>
		
	</table>
<!-- 	<button type="button" onclick="location.href='/asBoard/asAnswer'">답변완료</button> -->
	<button onclick="answer()">답변완료</button>
	<button type="button" onclick="location.href='/asBoard/write'">글쓰기</button>
</form>
</div>
<h3>페이지네이션 언제할래?</h3>

</body>
</html>