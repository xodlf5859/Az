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
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/header_footer.css">
    <link rel="stylesheet" href="/css/cooperator-request-board.css">
<title>Insert title here</title>
</head>
<body>
 <!-- as 게시판 -->
  <div class="header">
    <div class="header-logo">
    </div>
    <div class="header-menu">
      <div class="gnb">
        <div class="mainmenu"><a href="">회사소개</a>
          <ul class="submenu">
            <li><a href="">회사소개</a></li>
            <li><a href="">사회공헌</a></li>
          </ul>
        </div>
      </div>
      <div class="gnb">
        <div class="mainmenu"><a href="">입주박람회</a>
          <ul class="submenu">
            <li class="display-none"><a href="">입주박람회</a></li>
            <li><a href="">주관이력</a></li>
            <li><a href="">박람회 사진</a></li>
          </ul>
        </div>
      </div>
      <div class="gnb">
        <div class="mainmenu"><a href="">협력업체</a>
          <ul class="submenu">
            <li><a href="">협력사 조회</a></li>
          </ul>
        </div>
      </div>
      <div class="gnb">
        <div class="mainmenu"><a href="">문의하기</a>
          <ul class="submenu">
            <li><a href="">협력업체문의</a></li>
            <li><a href="">입주박람회문의</a></li>
            <li><a href="">A/S접수</a></li>
          </ul>
        </div>

      </div>
    </div>
    <div class="m-menu">
      <div class="m-menu-btn">
        <button class="menubutton"></button>
      </div>
    </div>
  </div>
      <div class="m-menu">
          <div class="m-menu-open">
              <div class="header">
              <div class="header-logo">
              </div>
                  <div class="m-menu-close">
                  <button class="menubutton"></button>
                  </div>
              </div>
              <div class="m-gnb">
              <button class="accordion m-mainmenu">회사소개</button>
              <div class="panel m-submenu">
                  <div><a href="">· 회사소개</a></div>
                  <div><a href="">· 사회공헌</a></div>
              </div>
              <button class="accordion m-mainmenu">주관이력</button>
              <div class="panel m-submenu">
                  <div><a href="">· 입주박람회</a></div>
                  <div><a href="">· 주관이력</a></div>
                  <div><a href="">· 박람회 사진</a></div>
              </div>
              <button class="accordion m-mainmenu">협력사조회</button>
              <div class="panel m-submenu">
                  <div><a href="">· 협력사 조회</a></div>
              </div>
              <button class="accordion m-mainmenu">문의하기</button>
              <div class="panel m-submenu">
                  <div><a href="">· 협력업체문의</a></div>
                  <div><a href="">· 입주박람회문의</a></div>
                  <div><a href="">· A/S접수</a></div>
              </div>
              </div>
              <div class="m-back"><img src="../img/m-menu-background.png" alt=""></div>
          </div>
      </div>
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
        
        
        <form method="post">
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
            	<c:forEach var="var" items="${asList}" varStatus="status">
                <li>
<%--                     <a href="/asBoard/detail/${var.asIdx}"> --%>
                    <a href="/asBoard/securityC/${var.asIdx}">
                      <input type="checkbox" class="b-check-box" name="asIdx" id="${var.asIdx}" value="${var.asIdx}">
                      <input type="text" name="${var.asIdx}" value="${var.asIdx}" style="display: none;">  
                     <p class="b-number">${status.count}</p>   
                     <div class="b-title-wrap">
                       <p class="b-title" id="comple">${var.asTitle}</p>
                      <div class="b-complete" id="${var.asStatus}">답변 대기중</div>
                      <div class="b-incomplete" id="${var.asStatus}">답변 완료</div>
                     </div>
                     <p class="b-writer">${var.asName}</p>
                     <p class="b-date">${var.asDate}</p>  
                     <p class="b-view">32</p>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>
        	<input type="submit" id="answerRun" formaction="/asBoard/asAnswer">
        </form>
        
        
        <div class="borad-bottom-01">
          <button class="b-state" onclick="answer();"><img src="../img/b-check.png">답변완료</button>
          <button class="b-write" onclick="location.href='/asBoard/write'"><img src="../img/b-write.png">글쓰기</button>
        </div>
        
<!--        pageMaker -->
        
        <ul class="borad-bottom-02">
          <li><a href="/asBoard/as?page=${pageMaker.startPage}" class="first">처음</a></li>
<%--           	<c:if test="${pageMaker.prev }"> --%>
		      <li>
		      	<a href="/asBoard/as?page=${pageMaker.startPage-1}" class="prev">이전</a>
		      </li>
<%--           	</c:if> --%>
          
          <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
			  <li ${pageMaker.cri.page == num? 'class=active':''}>
			 	 <a href="/asBoard/as?page=${num}" class="num">${num}</a>
			  </li>
		  </c:forEach>
          
<%-- 			<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> --%>
		      <li>
		        <a href="/asBoard/as?page=${pageMaker.endPage+1}" class="next">다음</a>
		      </li>
<%-- 		   	</c:if> --%>
		      
          <li><a href="/asBoard/as?page=${pageMaker.endPage}" class="last">마지막</a></li>
         </ul>
      </div>
      <button class="mobile-viewmore">
        더보기
      </button>
<div class="footer">
  <div class="footer-top">
    <div class="logo"></div>
    <div>
      <a href="">개인정보처리방침</a>
      <a href="">이용약관</a>
    </div>
  </div>
  <div class="footer-bottom">
    <div>
      <div>(34161)  대전광역시 유성구 복용북로 33번길 1  TEL : 042-825-6490</div>
      <div>대표 이도엽  사업자등록번호 193-88-01901</div>
    </div>
    <div>Copyright ⓒ 2022 ARTZEN All Rights Reserved.</div>
  </div>
</div>


<script type="text/javascript">

console.log("etstest");

for (var i = 0; i < 10; i++) {
	var answer_a = document.getElementsByClassName('b-complete')[i].id;
	var answer_b = document.getElementsByClassName('b-incomplete')[i].id;
// 	console.log(answer_a);
// 	console.log(answer_b);
	
	  if (answer_a == 'Y') {
	     document.getElementsByClassName('b-complete')[i].style.display='none';
	     } 
	  if (answer_b == 'N') {
	     document.getElementsByClassName('b-incomplete')[i].style.display='none';
	     } 
}


	
function answer() {
	console.log("test");
	var checkArray = document.getElementsByName("asIdx");
	console.log(checkArray);
	var check = document.getElementsByClassName('b-check-box')[i];
	console.log(check);
	
	var msg="";
	var flag = true;
	for (var i = 0; i < checkArray.length; i++){
		//alert(checkArray[i].checked);
		if (checkArray[i].checked){
			msg += checkArray[i].value + " ";
			flag = false;	
		}
	}
	
	if (flag){
		msg = "답변을 완료할 글을 선택하세요.";
		alert(msg);
	}
	else {
		//버튼 클릭한것이 있으면 폼 전송 실행
			document.getElementById("answerRun").click();
		}
	}


</script>
</body>
</html>