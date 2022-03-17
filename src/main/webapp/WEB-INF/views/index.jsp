<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     인클루드 사용 경로 -->
<%--     <jsp:include page="/WEB-INF/views/asBoard/as.jsp" /> --%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>(주)아트젠</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/header_footer.css">
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="css/popup.css">
  <script defer src="js/m-menu.js"></script>
  <script defer src="js/popup-close.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/pageMenu.jsp" />

 <div class="visual">
  <div class="main-top">
    <div class="main-title">Promise<br>with customers.</div>
    <div class="short-bar"></div>
    <div class="sub-title">고객과의 약속을 최우선으로</div>
    <div class="viewmore">
      <a href="">VIEW MORE<img src="../img/plus-icon.svg"></a>
    </div>

    
  </div>
  <div class="main-slider">
    <div class="swiper mySwiper-01">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="../img/main-slider-01.png"></div>
        <div class="swiper-slide"><img src="../img/main-slider-02.png"></div>
        <div class="swiper-slide"><img src="../img/main-slider-03.png"></div>
        <div class="swiper-slide"><img src="../img/main-slider-04.png"></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
  </div>
</div>

  <div class="about">
    <div class="section-title">아트젠은 고객의<br>든든한 친구가 되어드리겠습니다.</div>
    <div class="about-background"></div>
    <div class="swiper mySwiper-02 about-wrap">
      <div class="swiper-wrapper">
        <div class="swiper-slide introduce">
          <div class="intro-img">
            <a href="">
              <div class="company-img">
              </div>
              <div>
                <div class="view-more"><p>VIEW MORE</p><img src="../img/icon-right-arr.svg"></div>
              </div>
            </a>
          </div>
          <div class="intro-txt">
            <div class="company-icon"></div>
            <div class="intro-title">회사소개</div>
            <span>고객과의 약속을 최우선으로 생각하여 발로 뛰며 노력하는 주관사 아트젠을 소개합니다.</span>
          </div>
          <div class="plus-viewmore">
            <a href=""><img src="../img/plus-icon.svg"></a>
          </div>
        </div>

        <div class="swiper-slide introduce">
          <div class="intro-img">
            <a href="">
              <div class="fair-img">
              </div>
              <div>
                <div class="view-more"><p>VIEW MORE</p><img src="../img/icon-right-arr.svg"></div>
              </div>
            </a>
          </div>
          <div class="intro-txt">
            <div class="fair-icon"></div>
            <div class="intro-title">입주박람회</div>
            <span>지역입주민들의 권익 보호를 위해서 모두가 마지막까지 만족할 수 있는 결과를 만들어내는 아트젠의 입주박람회를 소개합니다.</span>
          </div>
          <div class="plus-viewmore">
            <a href=""><img src="../img/plus-icon.svg"></a>
          </div>
        </div>

        <div class="swiper-slide introduce">
          <div class="intro-img">
            <a href="">
              <div class="ask-img">
              </div>
              <div>
                <div class="view-more"><p>VIEW MORE</p><img src="../img/icon-right-arr.svg"></div>
              </div>
            </a>
          </div>
          <div class="intro-txt">
            <div class="ask-icon"></div>
            <div class="intro-title">문의하기</div>
            <span>협력업체 문의부터 A/S문의까지 신속하게 해결해드리겠습니다.</span>
          </div>
          <div class="plus-viewmore">
            <a href=""><img src="../img/plus-icon.svg"></a>
          </div>
        </div>
      </div>
      <div class="swiper-pagination"></div>
    </div>
  </div>

<div class="fair">
  <div class="tab-wrap">
    <div class="fair-title">
      <input type="radio" name="fair" id="menuOne" checked>
      <label for="menuOne">
        <div class="dot"></div>
        <div>주관이력</div>
      </label>
    </div>
    <div class="fair-title">
      <input type="radio" name="fair" id="menuTwo">
      <label for="menuTwo">
        <div class="dot"></div>
        <div>협력사조회</div>
      </label>
    </div>
  </div>
  <div class="fair-history">
    <div>
      <div class="fair-overview">지역 입주민들의 권익을 보호하기 위해 대전과 세종, 청주 등을 근거지로 활동하고있습니다.<br> 고객과의 약속을 최우선으로 생각하며 권익 보호를 위해 열심히 발로 뛰겠습니다.
      </div>
      <div class="viewmore">
        <a href="">VIEW MORE<img src="../img/plus-icon.svg"></a>
      </div>
    </div>
      <div class="apt-wrap">
        <div class="swiper mySwiper-03 history-slider">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div>
                <div class="apt-name">대전 도마 e편한세상 포레나</div>
                <div class="apt-info">
                  <div>2881세대</div>
                  <div class="green-stick"></div>
                  <div>입주박람회</div>
                </div>
                <div class="apt-overview">
                  대전 도마 e편한세상 포레나의 입주박람회입니다. 입주민들을 위한 다양한 이벤트 및 경품추첨까지 아트젠의 입주박람회를 확인해보세요!
                </div>
                <a href="">
                  <div class="view-fair-btn">
                    <button>박람회보기</button>
                  </div>
                </a>

              </div>
              <div class="fair-img">
                <div><img src="../img/histoty-01.jpg"></div>
                <div>
                  <h2>2022</h2>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <div>
                <div class="apt-name">대전 상대 아이파트시티</div>
                <div class="apt-info">
                  <div>2560세대</div>
                  <div class="green-stick"></div>
                  <div>입주박람회</div>
                </div>
                <div class="apt-overview">
                  아트젠이 주관한 대전 상대 아이파크시티 입주박람회의 모습을 소개합니다. 입주민들을 위한 다양한 이벤트 및 경품추첨까지 아트젠의 입주박람회를 확인해보세요!
                </div>
                <a href="">
                  <div class="view-fair-btn">
                    <button>박람회보기</button>
                  </div>
                </a>
              </div>
              <div class="fair-img">
                <div><img src="../img/histoty-02.jpg"></div>
                <div>
                  <h2>2021</h2>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <div>
                <div class="apt-name">계룡 대실2블록 리슈빌</div>
                <div class="apt-info">
                  <div>600세대</div>
                  <div class="green-stick"></div>
                  <div>입주박람회</div>
                </div>
                <div class="apt-overview">
                  아트젠이 주관한 계룡 대실2블록 리슈빌의 입주박람회의 모습을 소개합니다. 입주민들을 위한 다양한 이벤트 및 경품추첨까지 아트젠의 입주박람회를 확인해보세요!
                </div>
                <a href="">
                  <div class="view-fair-btn">
                    <button>박람회보기</button>
                  </div>
                </a>
              </div>
              <div class="fair-img">
                <div><img src="../img/histoty-03.jpg"></div>
                <div>
                  <h2>2021</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    
  </div>
  <div class="cooperative">
    <div>
      <div class="fair-overview">대전 · 세종 · 청주 등 업체들과 교루하고 상생의 길을 열어가고 있는 주관사<br>아트젠의 협력사를 소개합니다
      </div>
      <div class="viewmore">
        <a href="">VIEW MORE<img src="../img/plus-icon.svg"></a>
      </div>
    </div>
    <div class="coo-logo">
      <div>
        <img src="../img/lg-logo-02.png">
      </div>
      <div>
        <img src="../img/samsung-logo-02.png">
      </div>
      <div>
        <img src="../img/livart-logo-02.png">
      </div>
      <div>
        <img src="../img/iloom-logo-02.png">
      </div>
      <div>
        <img src="../img/simmons-logo-02.png">
      </div>
      <div>
        <img src="../img/casamia-logo-02.png">
      </div>
      <div>
        <img src="../img/desker-logo-02.png">
      </div>
      <div>
        <img src="../img/daelimbath-logo-02.png">
      </div>
      <div>
        <img src="../img/hansam-logo-02.png">
      </div>
    </div>
  </div>
</div>
<div class="news">
  <div class="section-title">NEWS</div>
  <div class="swiper mySwiper-04">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <a href="">
          <div class="news-img">
            <div></div>
          </div>
        </a>
        <div class="news-contents">
          <div class="news-title"><a href="">[사회공헌]갑천 환경살리기</a></div>
          <div class="news-date">2022 - 01 - 01</div>
        </div>
      </div>
      <div class="swiper-slide">
        <a href="">
          <div class="news-img">
            <div></div>
          </div>
        </a>
        <div class="news-contents">
          <div class="news-title"><a href="">[사회공헌]갑천 환경살리기</a></div>
          <div class="news-date">2022 - 01 - 01</div>
        </div>
      </div>
      <div class="swiper-slide">
        <a href="">
          <div class="news-img">
            <div></div>
          </div>
        </a>
        <div class="news-contents">
          <div class="news-title"><a href="">[사회공헌]수소발전회 백지화 활동</a></div>
          <div class="news-date">2022 - 01 - 01</div>
        </div>
      </div>
    </div>
    <div class="swiper-pagination"></div>
  </div>
  <div class="news-background">
    <div class="viewmore">
      <a href="">VIEW MORE<img src="../img/plus-icon.svg"></a>
    </div>
  </div>
</div>

<jsp:include page="/WEB-INF/views/main/footer.jsp" />


<!-- 홈페이지 준비중 팝업 -->
<div class="pop-up">
  <div class="coming-soon">
    <div class="notice">NOTICE</div>
    <div class="pop-up-contents">
      <div>
        <h2>홈페이지 준비중</h2>
        <h3>입니다!</h3>
      </div>
      <div>(주)아트젠에서 보다 나은 서비스를 위해<br>홈페이지를 새롭게 개편합니다!</div>
      <div><img src="../img/comingsoon-icon.png" alt=""></div>
      <button class="close">닫기</button>
    </div>
    <button class="close-again">다시 보지 않기</button>
  </div>
</div>

  <!-- 메인 슬라이더 스와이프 부분 -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script>
    var swiper = new Swiper(".mySwiper-01", {
      cssMode: true,
      loop: true,
      autoplay: {
          delay: 6000,
          disableOnInteraction: false,
        },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      pagination: {
        el: ".swiper-pagination",
      },
      mousewheel: true,
    });

    // 회사소개 부분 스와이퍼
    var swiper = new Swiper(".mySwiper-02", {
        slidesPerView: 1,
        spaceBetween: 32,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          dragable:true,
        },
        breakpoints: { //반응형 조건 속성
        960: { //640 이상일 경우
          slidesPerView: 3,
        },
      },
      });

// 주관이력 부분 스와이퍼
var swiper = new Swiper(".mySwiper-03", {
  slidesPerView: 1,
  spaceBetween: 32,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        breakpoints: { //반응형 조건 속성
        960: { //640 이상일 경우
          slidesPerView: 1,
        },
      },
      });


// 주관이력 / 협력사 조회 탭 버튼 부분
const fairTab = document.querySelector('.fair-history');
const cooperativeTab = document.querySelector('.cooperative');
const fairBtn = document.querySelector('#menuOne');
const cooperativeBtn = document.querySelector('#menuTwo');

fairBtn.addEventListener('click',()=>{
  fairTab.style.display = 'block';
  cooperativeTab.style.display = 'none';
});
cooperativeBtn.addEventListener('click',()=>{
  fairTab.style.display = 'none';
  cooperativeTab.style.display = 'block';
});


// 뉴스 부분 스와이퍼=
      var swiper = new Swiper(".mySwiper-04", {
        slidesPerView: 1,
        spaceBetween: 112,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          dragable:true,
        },
        breakpoints: { //반응형 조건 속성
        960: { //640 이상일 경우
          slidesPerView: 3,
        },
      },
      });
  
  

  </script>
  
<script type="text/javascript" src="../api_js/common.js"></script>

</body>
</html>