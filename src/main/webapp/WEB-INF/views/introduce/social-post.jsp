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
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/header_footer.css">
  <link rel="stylesheet" href="/css/social.css">
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
      <p class="sub-title-explain">입주민들을 위해 최선을 다하는 주관사 아트젠을 소개합니다.</p>
    </div>
  </div>
  <div class="fair-post">
    <div>글쓰기</div>
    <div class="post-wrap">
      <div class="contents">
        <div class="title">
          <span>*</span>
          <p>제목</p>
        </div>
        <input type="text">
      </div>
      <div class="contents">
        <div class="title">
          <span>*</span>
          <p>이미지 등록하기</p>
        </div>
        <form action="">
          <input type="file" name="" id="fairImgUpload" multiple accept="image/png, image/jpeg, image/jpg , image/gif">
        </form>

        <div class="img-file-wrap">
          <div class="file-name">
            <div>파일명</div>
            <ul class="file-list">
              <!-- 파일 추가 시 li 자체 복붙 -->
              <li>
                <!-- 버튼 누르면 사진,파일명,용량 삭제 -->
                <button class="delete-btn"></button>
                <div>abc.jpg</div>
              </li>
            </ul>
          </div>
          <div class="file-size">
            <div>용량</div>
            <ul class="file-list">
              <!-- 파일 추가 시 li 자체 복붙 -->
              <li>
                <div>10mb</div>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="contents ">
        <div class="title">
          <span>*</span>
          <p>내용</p>
        </div>
        <textarea name="" id="" style="width: 1392px; height: 400px;" rows="20"></textarea>
      </div>
      <div class="form-button">
        <button id="btn_cancel" class="btn_cancel">등록하기</a>
        <button type="submit" id="btn_submit" class="btn-submit">삭제하기</button>
    </div>
    </div>
  </div>
 <jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>