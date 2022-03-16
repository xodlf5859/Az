<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>글쓰기</h3>

<div>
	<form action="/asBoard/writeAS" method="POST">
		<table>
<!-- 			<tr> -->
<!-- 				<td>고객번호</td> -->
<!-- 				<td><input type="text" name=asIdx></td> -->
<!-- 			</tr> -->
			<tr>
				<td>고객이름</td>
				<td><input type="text" name="asName"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="asPw"></td>
			</tr>
			<tr>
				<td>아파트명</td>
				<td><input type="text" name="asApt"></td>
			</tr>
			<tr>
				<td>동/호수</td>
				<td><input type="text" name="asDetail"></td>
			</tr>
			<tr>
				<td>고객연락처</td>
				<td><input type="text" name="asPhone"></td>
			</tr>
			<tr>
				<td>구매품목</td>
				<td><input type="text" name="asItem"></td>
			</tr>
			<tr>
				<td>판매업체명</td>
				<td><input type="text" name="asStore"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="asTitle"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="asContent"></td>
			</tr>
		</table>
		<input type="submit" value="작성">
	</form>
		<button onclick="location.href='/asBoard/as'">취소</button>
</div>
</body>
</html>