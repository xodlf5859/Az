<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(주)아트젠</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header_footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/cooperator-request-read.css">
</head>
<body>
    <!-- 협력업체 신청 글을 읽었을 때 입니다. -->
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
              <div class="m-back"><img src="<%=request.getContextPath() %>/img/m-menu-background.png" alt=""></div>
          </div>
      </div>
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
<!--         <form name="fwite" id="fwrite" action="" method=""> -->
				<input type="hidden" id="applyIdx" value="${applyVO.applyIdx }">
            <div class="form-write">
                <div class="form-write-in">
                    <label for="wr-name"><span class="star">*</span>담당자</label>
                    <input type="text" id="wr-name" value="${applyVO.applyManager }">
                </div>
                <div class="form-write-in">
                    <label for="wr-password"><span class="star">*</span>비밀번호</label>
                    <input type="password" id="wr-password" value=" ${applyVO.applyPw }">
                </div>
                <div class="form-write-in">
                  <label for="wr-email">이메일</label>
                  <input type="email" id="wr-email" value="${applyVO.applyEmail }">
                </div>
                <div class="form-write-in">
                  <label for="wr-phone"><span class="star">*</span>연락처</label>
                  <input type="text" id="wr-phone" value="${applyVO.applyPhone }">
                </div>
                <div class="form-write-in">
                  <label for="wr-company"><span class="star">*</span>업체명</label>
                  <input type="text" id="wr-company" value="${applyVO.applyCompany }">
                </div>
                <div class="form-write-in">
                  <label for="wr-owner"><span class="star">*</span>대표자명</label>
                  <input type="text" id="wr-owner" value="${applyVO.applyName }">
                </div>
                <div class="form-write-in-100">
                  <label for="wr-product"><span class="star">*</span>취급 품목을 간단하게 설명해주세요.</label>
                  <input type="text" id="wr-product"value="${applyVO.applyItem }">
                </div>
                <div class="form-write-in">
                <C:set var="office" value="${applyVO.applyOffice }" />
                
                  <label for="wr-company-type"><span class="star">*</span>본사/총판/취급점 해당 기재</label>
                  <C:if test="${office eq 0}">
                  <input type="text" id="wr-company-type" value="본사" >
                  </C:if>
                  <C:if test="${office eq 1}">
                  <input type="text" id="wr-company-type" value="총판" >
                  </C:if>
                  <C:if test="${office eq 2}">
                  <input type="text" id="wr-company-type" value="취급점" >
                  </C:if>
                </div>
                <div class="form-write-in">
                  <label for="wr-store"><span class="star">*</span>매장 운영 유무</label>
                  <C:set var="store" value="${applyVO.applyStore }" />
                   <C:if test="${store eq 0}">
                  <input type="text" id="wr-store" value="유">
                  </C:if>
                   <C:if test="${store eq 1}">
                  <input type="text" id="wr-store" value="무">
                  </C:if>
                 
                </div>
                <div class="form-write-in">
                  <label for="wr-factory"><span class="star">*</span>공장 운영 유무</label>
                  <C:set var="factory" value="${applyVO.applyFactory }" />
                   <C:if test="${store eq 0}">
                  <input type="text" id="wr-factory" value="유">
                   </C:if>
                   <C:if test="${store eq 1}">
                  <input type="text" id="wr-factory" value="무">
                   </C:if>
                </div>
                <div class="form-write-in">
                  <label for="wr-purchase"><span class="star">*</span>공동 구매 참여 이력 유무</label>
                  <C:set var="group" value="${applyVO.applyGroupBuying }" />
                   <C:if test="${group eq 0}">
                  <input type="text" id="wr-purchase" value="유">
                   </C:if>
                   <C:if test="${group eq 1}">
                  <input type="text" id="wr-purchase" value="무">
                   </C:if>
                </div>
                <div class="form-write-in">
                  <label for="wr-local"><span class="star">*</span>협력사 활동 지역</label>
                  <input type="text" id="wr-local" value="${applyVO.applyArea }">
                </div>                              
                <div class="form-write-in">
                  <label for="wr-homepage">홈페이지</label>
                  <input type="text" id="wr-homepage" value="${applyVO.applyHomepage }">
                </div>                                          
            </div>
            <div class="form-button">
              <button id="updateBtn" class="btn_cancel">수정하기</a>
              <button type="submit" id="deleteBtn" class="btn-submit" >삭제하기</button>
            </div>
<!--         </form> -->
      </div>
    <div class="footer">
      footer
    </div>
    
    
</body>
 <script type="text/javascript" src="/api_js/apply/applyDetail.js"></script>
</html>


