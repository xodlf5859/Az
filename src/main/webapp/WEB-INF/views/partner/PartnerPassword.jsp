<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="/css/cooperator-request-read-password.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/header_footer.css">
</head>
<body>
    <!-- 협력업체 신청 글을 읽었을 때 비밀번호 입력 페이지입니다 -->
 
 
    <jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />
 
      <div class="sub-top">
        <h1 class="sub-top-title">협력업체 신청</h1>
        <p class="sub-top-title-explain">아트젠과 함께 하는 BEST PARTNERSHIP</p>  
        <div class="sub-top-visual">
          <div class="visual-title-wrap">
            <p class="visual-title">협력업체신청</p>
            <p class="visual-explain">아트젠은 상생과 협력의 가치를 믿고 실천합니다.</p>
          </div>
        </div>
      </div> 
      <div class="contents1">
        <div class="sub-contents-title">
          <div class="title-decoration"></div>
          <p class="sub-title">협력업체 신청</p>
          <p class="sub-title-explain">아트젠과 함께하는 BEST PARTNERSHIP</p>
        </div>
        <div class="secreat-page">
            <p>비밀글 보기</p>
            <p>이 글은 비밀글입니다. 비밀번호를 입력해 주세요.</p>
        </div>
<!--         <form name="fwite" id="fwrite" action="" method=""> -->
            <div class="form-write">
                <div class="form-write-in">
                    <label for="wr-password"><span class="star">*</span>비밀번호</label>
                    <input type="password" id="wr-password">
                    <input type="hidden" id="applyIdx" value="${applyVO.applyIdx }"> 
                    <input type="hidden" id="passwordCheck" value="${applyVO.applyPw }"> 
                </div>                                          
            </div>
            <div class="form-button">
              <button id="submitBtn" class="btn_cancel">확인</button>
                <a class="btn-cancle" id="backBtn">뒤로가기</a>
            </div>
<!--         </form> -->
      </div>
 <jsp:include page="/WEB-INF/views/main/footer.jsp" />
    <script type="text/javascript" src="../api_js/apply/applyCheck.js"></script>

</body>
</html>