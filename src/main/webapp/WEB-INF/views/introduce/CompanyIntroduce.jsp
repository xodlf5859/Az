<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>(주)아트젠</title>
  <script defer src="../js/m-menu.js"></script>
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/header_footer.css">
  <link rel="stylesheet" href="../css/about.css">
</head>
<body>
  
  <jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />
  <div class="sub-top">
    <h1 class="sub-top-title">회사소개</h1>
    <p class="sub-top-title-explain">입주민들을 위해 최선을 다하는 주관사 아트젠을 소개합니다.</p>  
    <div class="sub-top-visual">
      <div class="visual-title-wrap">
        <p class="visual-title">회사소개<p>
        <p class="visual-explain">고객과의 약속을 위해 최선을 다해 뛰겠습니다.</p>
      </div>
    </div>
  </div>
  <div class="contents1">
    <div class="sub-contents-title">
      <div class="title-decoration"></div>
      <p class="sub-title">ABOUT</p>
      <p class="sub-title-explain">아트젠은 장인이라는 뜻으로 특정 분야의 기술을 전문적으로 연구 노력하며, 발전시켜 계승해나간다는 의미입니다.<br>아트젠의 'A'와 'Z'는 처음 약속한 것을 끝까지 지키겠다는 고객과의 약속을 의미합니다</p>
    </div>
  </div>
<div class="about">
  <div class="about-title">
    <h1>고객과의 약속을</h1><h2>최우선으로</h2>
  </div>
  <div class="background"></div>
  <div class="profile">
    <div class="ceo-img"></div>
    <div>
      <div>
        안녕하십니까?<br>여러분을 책임지는 (주)아트젠 대표 이도엽입니다.
      </div>
      <div>
        입주박람회란, 신축 아파트 입주시 필요한 시공 및 제품의 가격, 품질, 사후관리 등을 종합적으로 검증하여 선정된 업체들을 한자리에 모아서 입주민들께 시간과 경비에 대한 효율성을 높이고 판매 후 안전한 사후관리가 될 수 있도록 책임져 드리는 것 입니다. 아트젠은 올바른 입주박람회를 통해서 고객과 상생할 수 있는 입주문화를 만들어 가고 있습니다. 감사합니다.
      </div>
      <div>
        (주)아트젠 대표 이도엽
      </div>
    </div>
  </div>
</div>
<div class="contents1">
  <div class="sub-contents-title">
    <div class="title-decoration"></div>
    <p class="sub-title">경영이념</p>
    <p class="sub-title-explain">아트젠의 경영방침과 핵심가치를 소개합니다.</p>
  </div>
</div>
<div class="about">
  <div class="management">
    <div>
      <div class="title">경영방침</div>
      <div class="icon-wrap">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
    <div>
      <div class="title">핵심가치</div>
      <div class="icon-wrap">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
  </div>
</div>
<div class="contents1">
  <div class="sub-contents-title">
    <div class="title-decoration"></div>
    <p class="sub-title">조직도</p>
    <p class="sub-title-explain">아트젠의 조직도를 소개합니다.</p>
  </div>
</div>
<div class="about">
  <div class="position-img"></div>
</div>
<div class="contents1">
  <div class="sub-contents-title">
    <div class="title-decoration"></div>
    <p class="sub-title">오시는 길</p>
    <p class="sub-title-explain">아트젠은 대전광역시 유성구 복용북로 33번길 1에 위치하고 있습니다.</p>
  </div>
</div>
<div class="atzen-map" id="map">
<!-- 여기에 지도 넣어줘야합니다 -->
</div>
  

<jsp:include page="/WEB-INF/views/main/footer.jsp" />
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a606bd75a5efab100648a4b72b6c0cb9&libraries=services"></script>
  <script type="text/javascript" src="../api_js/introduce/companyIntroduce.js"></script>
  
</body>
</html>