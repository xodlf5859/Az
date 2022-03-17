<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>(주)아트젠</title>
  <script defer src="../js/m-menu.js"></script>
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/header_footer.css">
  <link rel="stylesheet" href="../css/fair.css">
</head>
<body>
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
          <div class="display-none"><a href="">· 입주박람회</a></div>
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
    <h1 class="sub-top-title">입주박람회</h1>
    <p class="sub-top-title-explain">아트젠의 입주박람회를 소개합니다.</p>  
    <div class="sub-top-visual">
      <div class="visual-title-wrap">
        <p class="visual-title">입주박람회</p>
        <p class="visual-explain">고객과의 약속을 위해 최선을 다해 뛰겠습니다.</p>
      </div>
    </div>
  </div>
  <div class="contents1">
    <div class="sub-contents-title">
      <div class="title-decoration"></div>
      <p class="sub-title">입주박람회 현장</p>
      <p class="sub-title-explain">아트젠의 입주박람회 현장을 보여드리겠습니다.</p>
    </div>
  </div>
  
  <div class="fair">
  <c:forEach items="${fairList }" var="list">
    <div class="fair-wrap">
      <div class="fair-img"></div>
      <div class="fair-info">
        <div class="fair-title"><a href="/fair/list/${list.boardIdx }">${list.boardTitle}</a></div>
        <div class="fair-date"><a href="/fair/list/${list.boardIdx }">${list.boardRegdate }</a></div>
      </div>
    </div>
  </c:forEach>
  </div>
    
  <div class="form-button">
    <button id="registBtn">글쓰기</button>
  </div>
        <ul class="borad-bottom-02">
    <c:if test="${pageMaker.prev }">
    <li>
        <a href='/fair/list?page=${pageMaker.startPage-1 }' class="prev" >이전</a>
        
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
    <li>
        <a class="num" href='/fair/list?page=${pageNum }'>${pageNum }</a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
    <li>
        <a class="next" href='/fair/list?page=${pageMaker.endPage+1 }'>다음</a>
    </li>
    </c:if>
        
	</ul>
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
  
  
  <script type="text/javascript" src="../api_js/fair/fairList.js"></script>
<!--   <script type="text/javascript" src="../api_js/common.js"></script> -->
  
</body>
</html>