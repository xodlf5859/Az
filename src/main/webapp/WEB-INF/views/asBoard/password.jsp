<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(주)아트젠</title>
    <link rel="stylesheet" href="/css/common2.css">
    <link rel="stylesheet" href="/css/header_footer.css">
    <link rel="stylesheet" href="/css/cooperator-request-read-password.css">
</head>
<body>
    <!-- as 신청 글을 클릭했을 때 비밀번호 입력 페이지입니다 -->
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
        <div class="secreat-page">
            <p>비밀글 보기</p>
            <p>이 글은 비밀글입니다. 비밀번호를 입력해 주세요.</p>
        </div>
        <form name="fwite" id="fwrite" method="get" onsubmit="password();">
			<div style="display: none;">
				<input type="text" value="<c:out value='${list}'/>" name="as_idx" id="as_idx">
				
			</div>
            <div class="form-write">
                <div class="form-write-in">
                    <label for="wr-password"><span class="star">*</span>비밀번호</label>
                    <input type="password" id="wr-password" name="asPassword">
                    <input type="hidden" id="pass" value="<c:out value='${realPass}'/>">
                </div>                                          
            </div>
            <div class="form-button">
              <button id="btn_cancel" class="btn_cancel">확인</button>
                <a href="/asBoard/as" class="btn-cancle">뒤로가기</a>
            </div>
        </form>
      </div>
   <jsp:include page="/WEB-INF/views/main/footer.jsp" />
    <script type="text/javascript">
    	
    	var realPass = document.getElementById("pass").value;
    	console.log("realPass : "+realPass);
    	
    	function password() {
    		var nowPass = document.getElementById("wr-password").value;
    		var pageNum = document.getElementById("as_idx").value;
    		var myForm = document.getElementById("fwrite");
    		console.log("nowPass : "+nowPass);
    		
    		if (nowPass == realPass) {
    			alert("로그인성공");
    			myForm.action = "/asBoard/detail/"+pageNum;
			} else  {
				alert("비밀번호가 다릅니다. 다시 입력해주세요");
			}
		}
    	
    </script>
    
</body>
</html>


