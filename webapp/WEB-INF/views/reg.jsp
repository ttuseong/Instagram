<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>instagram</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">

    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/ff5ee53d46.js" crossorigin="anonymous"></script>
    <!-- 공통 -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reg.css">
  </head>
  <body>
    <main>
      <div class="container">
        <div class="reg_content">
          <div class="reg_size">
            <div class="reg">
              <h1>인스타그램</h1>

              <p class="reg_message">친구들의 사진과 동영상을 보려면 가입하세요.</p>

              <button class="reg_anotherLog" type="button" name="button">
                <span>
                  <i class="fab fa-facebook-square"></i>
                </span>
                <p>Facebook으로 로그인</p>
              </button>

              <div class="reg_or">
                <div class="reg_or_line"></div>
                <div class="reg_or_text">
                  또는
                </div>
                <div class="reg_or_line"></div>
              </div>

              <form>
                <input placeholder="휴대폰 번호 또는 이메일 주소" type="text" name="userEmail" value="">
                <input placeholder="성명" type="text" name="userName" value="">
                <input placeholder="사용자 이름" type="text" name="userId" value="">
                <input placeholder="비밀번호" type="text" name="userPw" value="">
                <button class="regBtn" type="button" name="button">가입</button>
              </form>

              <p class="reg_text">가입하면 Instagram의 <a href="#">약관</a>, <a href="#">데이터 정책</a> 및 <a href="#">쿠키 정책</a>에 동의하게 됩니다.</p>
            </div>
            <div class="reg_login">
              <p>계정이 있으신가요? <a href="${pageContext.request.contextPath}/">로그인</a></p>
            </div>
            <div class="reg_app">
              <div class="reg_app_text">
                <p>앱을 다운로드하세요.</p>
              </div>
              <div class="reg_app_img">
                <div class="reg_app_appstore">
                  <img src="${pageContext.request.contextPath}/assets/images/앱스토어.png" alt="">
                </div>
                <div class="reg_app_playstore">
                  <img src="${pageContext.request.contextPath}/assets/images/플레이스토어.png" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <footer>
      <div class="reg_footer">
        <div class="reg_footer_top">
          <div class="reg_footer_link1">
            <ul>
              <li><a href="#">소개</a></li>
              <li><a href="#">블로그</a></li>
              <li><a href="#">채용 정보</a></li>
              <li><a href="#">도움말</a></li>
              <li><a href="#">API</a></li>
              <li><a href="#">개인정보처리방침</a></li>
              <li><a href="#">약관</a></li>
              <li><a href="#">인기 계정</a></li>
              <li><a href="#">해시태그</a></li>
              <li><a href="#">위치</a></li>
            </ul>
          </div>
        </div>
        <div class="reg_footer_bottom">
          <div class="reg_footer_scroll">
            <select class="" name="">
              <option value="">Engilsh</option>
              <option value="" selected>한국어</option>
            </select>
          </div>
          <div class="reg_footer_text">
            <p>© 2020 Instagram from Facebook</p>
          </div>
        </div>
      </div>
    </footer>
  </body>
  <script src="${pageContext.request.contextPath}/assets/js/reg.js" type="text/javascript"></script>
</html>
