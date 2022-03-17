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
    <link rel="stylesheet" href="../css/common2.css">
    <link rel="stylesheet" href="../css/header_footer.css">
    <link rel="stylesheet" href="../css/as-form.css">
</head>
<body>

      
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
	<form action="/asBoard/writeAS" name="fwite" id="fwrite" method="POST">
				 <div class="form-write">
                <div class="form-write-in">
                    <label><span class="star">*</span>성명</label>
                    <input type="text" name="asName">
                </div>
                <div class="form-write-in">
                    <label><span class="star">*</span>비밀번호</label>
                    <input type="password" name="asPw">
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>아파트명</label>
                  <input type="text" name="asApt">
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>동/ 호수</label>
                  <input type="text" name="asDetail">
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>고객님 연락처</label>
                  <input type="text" name="asPhone">
                </div>
                <div class="form-write-in">
                  <label><span class="star">*</span>구매품목</label>
                  <input type="text" name="asItem">
                </div>
                <div class="form-write-in">
                  <label>판매 업체명</label>
                  <input type="text" name="asStore">
                </div>
                <div class="form-write-in">
                  <label>접수일</label>
                  <input type="text" name="asDate">
                </div>
                <div class="form-write-in-100">
                  <label class="title-label"><span class="star">*</span>제목</label>
                  <input type="text" name="asTitle">
                </div>
                <textarea class="form-write-in-100-text" name="asContent"></textarea>
            </div>
            <div class="form-button">
              <a href="/asBoard/as" class="btn-cancle">취소</a>
              <button type="submit" id="btn_submit" class="btn-submit">작성완료</button>
            </div>
        </form>
    </div>
  

<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>