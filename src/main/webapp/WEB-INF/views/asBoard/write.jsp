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
	<form action="/writeAS" method="POST">
		<table>
			<tr>
				<td>1</td>
				<td><input type="text" name="test1"></td>
			</tr>
			<tr>
				<td>2</td>
				<td><input type="text" name="test2"></td>
			</tr>
			<tr>
				<td>3</td>
				<td><input type="text" name="test3"></td>
			</tr>
			<tr>
				<td>4</td>
				<td><input type="text" name="test4"></td>
			</tr>
			<tr>
				<td>5</td>
				<td><input type="text" name="test5"></td>
			</tr>
			<tr>
				<td>6</td>
				<td><input type="text" name="test6"></td>
			</tr>
		</table>
		<input type="submit" value="작성">
	</form>
		<button onclick="location.href='/as'">취소</button>
</div>
</body>
</html>