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
                     <p class="b-number">${var.asIdx}</p>   
                     <div class="b-title-wrap">
                       <p class="b-title" id="comple">${var.asTitle}</p>
                      <div class="b-complete" id="${var.asStatus}">답변 대기중</div>
                      <div class="b-incomplete" id="${var.asStatus}">답변 완료</div>
                     </div>
                     <p class="b-writer">${var.asName}</p>
                     <p class="b-date"> <fmt:formatDate value="${var.asDate}" pattern="yyyy-MM-dd" />  </p>  
                     <p class="b-view">${var.asCount}</p>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>
        	<input type="submit" id="answerRun" formaction="/asBoard/asAnswer" style="display: none;">
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

 <jsp:include page="/WEB-INF/views/main/footer.jsp" />
 
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