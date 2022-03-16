<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(주)아트젠</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header_footer.css">
    <link rel="stylesheet" href="../css/as-form-read.css">
</head>
<body>
  <!-- 입주 박람회 글 읽었을 때 페이지 -->
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
        <form name="fwite" id="fwrite" action="update.do?inquiry_idx=${vo.inquiry_idx }" method="post">
            <div class="form-write">
                <div class="form-write-in">
                    <label><span class="star">*</span>이름</label>
                    <input type="text" disabled value="${vo.inquiry_name }" >
                </div>
                <div class="form-write-in">
                    <label><span class="star">*</span>비밀번호</label>
                    <input type="password" disabled value="${vo.inquiry_pw }" >
                </div>
                <div class="form-write-in">
                  <label>이메일</label>
                  <input type="text" disabled value="${vo.inquiry_email }" >
                </div>
                <div class="form-write-in">
                  <label>연락처</label>
                  <input type="text" disabled value="${vo.inquiry_phone }" >
                </div>
                <div class="form-write-in-100">
                  <label class="title-label"><span class="star">*</span>제목</label>
                  <input type="text" disabled value="${vo.inquiry_title }" >
                </div>
                <textarea class="form-write-in-100-text"  disabled>${vo.inquiry_content }</textarea>
            </div>
            <div class="form-button">
                <div class="form-button-left">
                  <a href="list.do" class="btn-cancle">목록</a>
                </div>
                <div class="form-button-right">
                  <button type="submit" id="btn_submit" class="btn-submit">삭제</button>
                  <button type="submit" id="btn_submit" class="btn-submit">수정</button>
                </div>
            </div>
        </form>
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


