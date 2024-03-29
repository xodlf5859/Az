<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>(주)아트젠</title>
  <script defer src="../js/m-menu.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header_footer.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/fair.css">
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

  <div class="fair-read">
    <div class="post-title">
      <div>제목</div>
      <div>${fairVO.boardTitle}</div>
    </div>
    <div class="post-contents">
      <div class="img-wrap">
        <img src="../img/main-slider-02.png">
        <img src="../img/main-slider-01.png">
      </div>
      <div>${fairVO.boardContent }</div>
    </div>
    <div class="post-btn-wrap">
      <div>
        <a href="">이전</a>
        <a href="">목록</a>
        <a href="">다음</a>
      </div>
      <div class="admin-btn-wrap">
        <form action="">
          <button>삭제</button>
          <button>수정</button>
        </form>
      </div>
    </div>
  </div>


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
</body>
</html>