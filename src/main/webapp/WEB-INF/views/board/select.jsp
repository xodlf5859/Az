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

<script>

</script>
</body>
</html>