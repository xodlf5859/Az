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
	<form method="POST" name="form">
	<table>
		<tr>
			<td>회원번호</td>
			<td><input type="text" name="asIdx" value="${var.asIdx}"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="asName" value="${var.asName}">   </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asPw" value="${var.asPw}">     </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asApt" value="${var.asApt}">    </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asDetail" value="${var.asDetail}"> </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asPhone" value="${var.asPhone}">  </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asItem" value="${var.asItem}">   </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asStore" value="${var.asStore}">  </td>
		</tr>
	
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asDate" value="${var.asDate}">   </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asTitle" value="${var.asTitle}">  </td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asContent" value="${var.asContent}"></td>
		</tr>
		<tr>
			<td>ㅁㄴㅇㄹ</td>
			<td><input type="text" name="asStatus" value="${var.asStatus}"> </td>
		</tr>
		
	</table>
	
	<input type="submit" value="수정" formaction="/asBoard/asUpdatePage">
	<input type="submit" value="삭제" formaction="/asBoard/asDelete">
	
<!-- 	<button type="submit">수정</button> -->
<%-- 	<button type="button" onclick="location.href='/asBoard/asDelete'" value="${var.asIdx}" name="asIdx">삭제</button> --%>
	</form>
</c:forEach>



</body>
</html>