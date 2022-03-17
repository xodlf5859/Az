<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(주)아트젠</title>
    <link rel="stylesheet" href="/css/common2.css">
    <link rel="stylesheet" href="/css/header_footer.css">
    <link rel="stylesheet" href="/css/as-form-read.css">
</head>
<body>
 <!-- as 글 클릭했을 때  -->
      <jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />
      
      <div class="sub-top">
        <h1 class="sub-top-title">AS 접수센터</h1>
        <p class="sub-top-title-explain">하자보수 접수 센터입니다. 최대한 빠르게 답변해드리겠습니다.</p>  
        <div class="sub-top-visual">
          <div class="visual-title-wrap">
            <p class="visual-title">AS 접수센터</p>
            <p class="visual-explain">아트젠은 고객님과의 약속을 끝까지 책임지겠습니다.</p>
          </div>
        </div>
      </div> 
      <div class="contents1">
        <div class="sub-contents-title">
          <div class="title-decoration"></div>
          <p class="sub-title">AS 접수센터</p>
          <p class="sub-title-explain">하자보수 접수 센터입니다. 최대한 빠르게 답변해드리겠습니다.</p>
        </div>
        
<c:forEach var="var" items="${list}">
	<form method="POST" name="form">
			
	
	
	
	 <div class="form-write">
	 <input type="text" name="asIdx" value="${var.asIdx}" style="display: none;">
                <div class="form-write-in">
                    <label><span class="star">*</span>성명</label>
                    <input type="text" name="asName" value="${var.asName}" disabled>
                </div>
                <div class="form-write-in">
                    <label><span class="star">*</span>비밀번호</label>
                    <input type="password" name="asPw" value="${var.asPw}" disabled>
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>아파트명</label>
                  <input type="text" name="asApt" value="${var.asApt}" disabled>
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>동/ 호수</label>
                  <input type="text" name="asDetail" value="${var.asDetail}" disabled>
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>고객님 연락처</label>
                  <input type="text" name="asPhone" value="${var.asPhone}" disabled>
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>구매품목</label>
                  <input type="text" name="asItem" value="${var.asItem}" disabled>
                </div>
                <div class="form-write-in">
                  <label>판매 업체명</label>
                  <input type="text" name="asStore" value="${var.asStore}" disabled>
                </div>
                <div class="form-write-in">
                  <label>접수일</label>
                  <input type="text" name="asDate" value="${var.asDate}" disabled>
                </div>
                <div class="form-write-in-100">
                    <label class="title-label"><span class="star">*</span>제목</label>
                    <input type="text" name="asTitle" value="${var.asTitle}" disabled>
                  </div>
                  <textarea class="form-write-in-100-text" name="asContent" disabled>${var.asContent}</textarea>
                </div>
                <div class="form-button">
                    <div class="form-button-left">
                      <a href="/asBoard/as" class="btn-cancle">목록</a>
                    </div>
                    <div class="form-button-right">
                      <button type="submit" id="btn_submit" class="btn-submit" formaction="/asBoard/asDelete">삭제</button>
<!--                       <button type="submit" id="btn_submit" class="btn-submit">글쓰기</button> -->
                      <button type="submit" id="btn_submit" class="btn-submit" formaction="/asBoard/asUpdatePage">수정</button>
                    </div>
                </div>
	
	
	
<!-- 	<input type="submit" value="수정" formaction="/asBoard/asUpdatePage"> -->
<!-- 	<input type="submit" value="삭제" formaction="/asBoard/asDelete"> -->
	
	
	</form>
<!-- 	<button onclick="history.back()">목록</button> -->
</c:forEach>

<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>