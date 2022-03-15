<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<C:forEach items="${selectList}" var="list">
${list.boardIdx } ${list.boardTitle }
</C:forEach>

<input type="text" id="boardTitle">
<input type="text" id="boardContent">
<input type="text" id="boardWriter" value="1">
<input type="hidden" id="boardType" value="0" >

<button id="boardButton">버튼</button>
<button id="boardButton2">버튼2</button>

<script src="../api_js/select.js">

</script>
</body>
</html>