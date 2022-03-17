<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header_footer.css">
    <link rel="stylesheet" href="../css/cooperator-request-board.css">
</head>
<body>
  <!-- 협력업체신청 게시판 -->
      
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
        <div class="c-r-b-wrap">
            <ol>
                <li>
                  <input type="checkbox" class="b-check-box" id="checkAll">
                </li>
                <li>번호</li>
                <li>제목</li>
                <li>글쓴이</li>
                <li>날짜</li>
<!--                 <li>조회수</li> -->
            </ol>
            <ul class="cooperator-request-board">
            <C:forEach var="list" items="${selectList }" >
                <li>
                    <a href="/partner/check?applyIdx=${list.applyIdx }">
                    <input type="hidden" value="${list.applyIdx }">
                      <input type="checkbox" class="b-check-box" name="answerCheck" id="answerCheck" value="${list.applyIdx }" >  
                     <p class="b-number">${list.applyIdx }</p>   
                     <div class="b-title-wrap">
                       <p class="b-title">-비밀글 입니다.-</p>
                       <C:if test="${list.applyState eq 0 }">
                      <div class="b-complete">
                      답변 대기중</div>
                      </C:if>
                       <C:if test="${list.applyState eq 1 }">
                      <div class="b-incomplete">
                      답변 완료</div>
                      </C:if>
                     </div>
                     <p class="b-writer">${list.applyManager }</p> 
                     <p class="b-date"> <fmt:formatDate value="${list.applyRegdate }" pattern="YYYY-MM-dd"/></p>  
<!--                      <p class="b-view">32</p> -->
                    </a>
                </li>
            </C:forEach>
<!--                 <li> -->
<!--                   <a href="#"> -->
<!--                     <input type="checkbox" class="b-check-box">   -->
<!--                    <p class="b-number">22</p>    -->
<!--                    <div class="b-title-wrap"> -->
<!--                      <p class="b-title">테스트입니다.adfadfadfad fadffadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad a adf ad ad테스트입니다.adfadfadfad fadf adf ad ad adfadfad fadf adf ad 끝!</p> -->
<!--                     <div class="b-incomplete">답변 완료</div> -->
<!--                    </div> -->
<!--                    <p class="b-writer">가나다라마바사자dddddd</p>  -->
<!--                    <p class="b-date">2022. 03. 02</p>   -->
<!-- <!--                    <p class="b-view">32</p> -->
<!--                   </a> -->
<!--               </li> -->
            </ul>
        </div>
        <div class="borad-bottom-01">
          <button class="b-state" id="answerBtn"><img src="/img/b-check.png">답변완료</button>
          <button class="b-write" id="writeBtn"><img src="/img/b-write.png">글쓰기</button>
        </div>
<!--         <ul class="borad-bottom-02"> -->
<!--           <li><a href="#" class="first">처음</a></li> -->
	</ul>


      </div>





      <button class="mobile-viewmore">
        더보기
      </button>
 <jsp:include page="/WEB-INF/views/main/footer.jsp" />
      
<script type="text/javascript" src="../api_js/apply/applyList.js"></script>
<script type="text/javascript" src="../api_js/common.js"></script>

</body>
</html>