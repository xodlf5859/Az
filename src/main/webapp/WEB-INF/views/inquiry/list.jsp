<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(주)아트젠</title>
    <link rel="stylesheet" href="../css/common2.css">
    <link rel="stylesheet" href="../css/header_footer.css">
    <link rel="stylesheet" href="../css/cooperator-request-board.css">

	<script type="text/javascript">
		$(function(){
			$(".dataRow").click(function(){
				var no = $(this).find(".inquiry_idx").text();
				location = "view?inquiry_idx=" + no;
			});
		});
	</script>

</head>
<body>
  <!-- 입주박람회 게시판 -->
     <jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />
     
      <div class="sub-top">
        <h1 class="sub-top-title">입주 박람회 문의</h1>
        <p class="sub-top-title-explain">입주 박람회에 관한 궁금한 점을 문의하실 수 있습니다.</p>  
        <div class="sub-top-visual">
          <div class="visual-title-wrap">
            <p class="visual-title">입주 박람회 문의</p>
            <p class="visual-explain">언제나 아트젠을 사랑해 주셔서 감사합니다. 최대한 빠르게 답변해 드릴 수 있도록 노력 하겠습니다.</p>
          </div>
        </div>
      </div> 
      <div class="contents1">
        <div class="sub-contents-title">
          <div class="title-decoration"></div>
          <p class="sub-title">입주 박람회 문의</p>
          <p class="sub-title-explain">입주 박람회에 관한 궁금한 점을 문의하실 수 있습니다.</p>
        </div>
        <div class="c-r-b-wrap">
            <ol>
                <li>
                  <input type="checkbox" class="b-check-box">
                </li>
                <li>번호</li>
                <li>제목</li>
                <li>글쓴이</li>
                <li>날짜</li>
                <li>조회수</li>
            </ol>
            <ul class="cooperator-request-board">
            <c:forEach items="${list }" var="vo">
                <li class="dataRow">
                    <a href="view?inquiry_idx=${vo.inquiry_idx }">
                      <input type="checkbox" class="b-check-box">  
                     <p class="b-number">${vo.inquiry_idx }</p>   
                     <div class="b-title-wrap">
                       <p class="b-title">${vo.inquiry_title }</p>
                      <div class="b-complete">답변 대기중</div>
                     </div>
                     <p class="b-writer">${vo.inquiry_name }</p> 
                     <p class="b-date"><fmt:formatDate value="${vo.inquiry_date}" pattern="yyyy.MM.dd"/></p>  
                     <p class="b-view">32</p>
                    </a>
                </li>
              <!--   <li>
                  <a href="#">
                    <input type="checkbox" class="b-check-box">  
                   <p class="b-number">22</p>   
                   <div class="b-title-wrap">
                     <p class="b-title">테스트입니다.adfadfadfad fadffadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad afadfadfad fadf adf ad a adf ad ad테스트입니다.adfadfadfad fadf adf ad ad adfadfad fadf adf ad 끝!</p>
                    <div class="b-incomplete">답변 완료</div>
                   </div>
                   <p class="b-writer">가나다라마바사자dddddd</p> 
                   <p class="b-date">2022. 03. 02</p>  
                   <p class="b-view">32</p>
                  </a>
              </li> -->
            </c:forEach>
            </ul>
        </div>
        <div class="borad-bottom-01">
          <button class="b-state"><img src="/img/b-check.png">답변완료</button>
          <button onclick="location.href='/inquiry/write'" class="b-write"><img src="/img/b-write.png">글쓰기</button>
        </div>
<!--         <ul class="borad-bottom-02"> -->
<!--           <li><a href="#" class="first">처음</a></li> -->
<!--           <li><a href="#" class="prev">이전</a></li> -->
<!--           <li><a href="#" class="num">1</a></li> -->
<!--           <li><a href="#" class="num">2</a></li> -->
<!--           <li><a href="#" class="next">다음</a></li> -->
<!--           <li><a href="#" class="last">마지막</a></li> -->
<!--         </ul> -->
	      <ul class="borad-bottom-02">
	    <c:if test="${pageMaker.prev }">
	    <li>
	        <a href='/partner/list?page=${pageMaker.startPage-1 }' class="prev">이전</a>
	    </li>
	    </c:if>
	    <C:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
	    <li>
	        <a href='/partner/list?page=${pageNum }' class="num">${pageNum }</a>
	    </li>
	    </C:forEach>
	    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
	    <li>
	        <a href='/partner/list?page=${pageMaker.endPage+1 }' class="next">다음</a>
	    </li>
	    </c:if>
	    <li>
	    </li>
	</ul>

          
        <ul class="borad-bottom-02">
          <li><a href="#" class="first">처음</a></li>
          <li><a href="#" class="prev">이전</a></li>
          <li><a href="#" class="num">1</a></li>
          <li><a href="#" class="num">2</a></li>
          <li><a href="#" class="next">다음</a></li>
          <li><a href="#" class="last">마지막</a></li>
         </ul>
      </div>
      <button class="mobile-viewmore">
        더보기
      </button>
 <jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>


