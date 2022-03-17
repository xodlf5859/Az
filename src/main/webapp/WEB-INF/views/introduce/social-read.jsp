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
  <link rel="stylesheet" href="../css/social.css">
</head>
<body>
  
  <jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />
  
  
  <div class="sub-top">
    <h1 class="sub-top-title">회사소개</h1>
    <p class="sub-top-title-explain">입주민들을 위해 최선을 다하는 주관사 아트젠을 소개합니다.</p>  
    <div class="sub-top-visual">
      <div class="visual-title-wrap">
        <p class="visual-title">사회공헌</p>
        <p class="visual-explain">고객과의 약속을 위해 최선을 다해 뛰겠습니다.</p>
      </div>
    </div>
  </div>
  <div class="contents1">
    <div class="sub-contents-title">
      <div class="title-decoration"></div>
      <p class="sub-title">사회공헌</p>
      <p class="sub-title-explain">아트젠은 다양한 분야의 사회공헌활동을 통해 우리사회에 기여하고자 지속적으로 노력하고있습니다.</p>
    </div>
  </div>

  <div class="fair-read">
    <div class="post-title">
      <div>제목</div>
      <div>[봉사활동]갑천 쓰레기 줍기</div>
    </div>
    <div class="post-contents">
      <div class="img-wrap">
        <img src="../img/main-slider-02.png">
        <img src="../img/main-slider-01.png">
      </div>
      <div>글 내용을 입력해주세요.<br>두줄로 내려가면 이렇게 됨</div>
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


  <jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>