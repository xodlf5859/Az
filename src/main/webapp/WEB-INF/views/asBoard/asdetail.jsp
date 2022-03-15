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
<h3>as상세내용</h3>

<c:forEach var="var" items="${list}">
	<table>
		<tr>
			<td>제목</td>
			<td>${var.asTitle}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${var.asContent}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</table>
</c:forEach>

</body>
</html>