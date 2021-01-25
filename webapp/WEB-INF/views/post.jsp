<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>instagram</title>
	
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/post.css">
	
	    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js" type="text/javascript"></script>
	    <script src="https://kit.fontawesome.com/ff5ee53d46.js" crossorigin="anonymous"></script>
	    <!-- 공통 -->
	
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainPage.css">
  	</head>
	

	<body>
	
	  <header id="header">
	    <div class="h_fixed">
	      <div class="container">
	        <div class="row">
	          <div class="h_contents">
	            <div class="h_left">
	              <a href="#"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="로고 이미지" class="logoImg"></a>
	            </div>
	            <!-- h_left -->
	            <div class="h_center">
	              <input type="text" name="" value="" placeholder="검색">
	              <div class="h_center_icon_pos">
	                  <i class="fas fa-search"></i>
	              </div>
	            </div>
	            <!-- h_center -->
	            <div class="h_right">
	              <ul class="h_right_icon">
	                <li><a href="#">
	                  <svg fill="#262626" height="22" viewBox="0 0 48 48" width="22">
	                    <path d="M45.5 48H30.1c-.8 0-1.5-.7-1.5-1.5V34.2c0-2.6-2.1-4.6-4.6-4.6s-4.6 2.1-4.6 4.6v12.3c0 .8-.7 1.5-1.5 1.5H2.5c-.8 0-1.5-.7-1.5-1.5V23c0-.4.2-.8.4-1.1L22.9.4c.6-.6 1.6-.6 2.1 0l21.5 21.5c.3.3.4.7.4 1.1v23.5c.1.8-.6 1.5-1.4 1.5z"></path>
	                  </svg>
	                </a></li>
	                <li><a href="#">
	                  <svg fill="#262626" height="22" viewBox="0 0 48 48" width="22">
	                    <path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path>
	                  </svg>
	                </a></li>
	                <li><a href="#">
	                  <svg fill="#262626" height="22" viewBox="0 0 48 48" width="22">
	                    <path d="M24 0C10.8 0 0 10.8 0 24s10.8 24 24 24 24-10.8 24-24S37.2 0 24 0zm0 45C12.4 45 3 35.6 3 24S12.4 3 24 3s21 9.4 21 21-9.4 21-21 21zm10.2-33.2l-14.8 7c-.3.1-.6.4-.7.7l-7 14.8c-.3.6-.2 1.3.3 1.7.3.3.7.4 1.1.4.2 0 .4 0 .6-.1l14.8-7c.3-.1.6-.4.7-.7l7-14.8c.3-.6.2-1.3-.3-1.7-.4-.5-1.1-.6-1.7-.3zm-7.4 15l-5.5-5.5 10.5-5-5 10.5z"></path>
	                  </svg>
	                </a></li>
	                <li data-id="header_like_info"><a href="#" onclick="preventClick(event)">
	                  <svg fill="#262626" height="22" viewBox="0 0 48 48" width="22">
	                    <path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path>
	                  </svg>
	                </a></li>
	                <li data-id="header_user_info">
	                  <div class=""></div>
	                  <a href="#" onclick="preventClick(event)" >
	                    <img class="userImg" src="${pageContext.request.contextPath}/assets/images/testImg1.png" alt="사용자 이미지">
	                  </a>
	                </li>
	              </ul>
	              <div class="modal" id="header_like_info">
	                <div class="modal_cancell_ground header_modal_cancell"></div>
	                <div class="modal_background modal_like_background">
	                  <div class="header_modal_like_icon"></div>
	                  <ul class="herder_modal_like_list">
	                    <li>
	                      <div class="helper"></div>
	                      <div class="modal_like_userImg">
	                        <div class="modal_like_userImg_bg">
	                          <img src="${pageContext.request.contextPath}/assets/images/testImg3.jpg" alt="">
	                        </div>
	                      </div>
	                      <div class="modal_like_msg">
	                        <a href="#" class="modal_like_msg_from">광고도비</a>님이 댓글에서 회원님을 언급했습니다:
	                        <a href="#" class="modal_like_msg_to">@사망도비</a> zzzzz
	                      </div>
	                      <div class="modal_like_postImg">
	                        <img src="${pageContext.request.contextPath}/assets/images/testImg8.jpg" alt="">
	                      </div>
	                    </li>
	                    <li>
	                      <div class="helper"></div>
	                      <div class="modal_like_userImg">
	                        <div class="modal_like_userImg_bg">
	                          <img src="${pageContext.request.contextPath}/assets/images/testImg3.jpg" alt="">
	                        </div>
	                      </div>
	                      <div class="modal_like_msg follow">
	                        <a href="#" class="modal_like_msg_from">테스트도비</a>님이 회원님을 팔로우하기 시작했습니다.
	                      </div>
	                      <div class="modal_like_btn">
	                        <button type="button" name="button">팔로우</button>
	                      </div>
	                    </li>
	                    <li>
	                      <div class="helper"></div>
	                      <div class="modal_like_userImg">
	                        <div class="modal_like_userImg_bg">
	                          <img src="${pageContext.request.contextPath}/assets/images/testImg3.jpg" alt="">
	                        </div>
	                      </div>
	                      <div class="modal_like_msg">
	                        <a href="#" class="modal_like_msg_from">광고도비</a>님이 댓글에서 회원님을 언급했습니다:
	                        <a href="#" class="modal_like_msg_to">@사망도비</a> zzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwezzqweqwe
	                      </div>
	                      <div class="modal_like_postImg">
	                        <img src="${pageContext.request.contextPath}/assets/images/testImg8.jpg" alt="">
	                      </div>
	                    </li>
	                  </ul>
	                </div>
	              </div>
	              <div class="modal" id="header_user_info">
	                <div class="modal_cancell_ground header_modal_cancell"></div>
	                <div class="modal_background modal_user_background">
	                  <div class="header_modal_user_icon"></div>
	                  <ul class="herder_modal_user_list">
	                    <li><a href="#">
	                      <span class="header_modal_user_icon">
	                        <svg aria-label="프로필" class="_8-yf5 " fill="#262626" height="16" viewBox="0 0 32 32" width="16"><path d="M16 0C7.2 0 0 7.1 0 16c0 4.8 2.1 9.1 5.5 12l.3.3C8.5 30.6 12.1 32 16 32s7.5-1.4 10.2-3.7l.3-.3c3.4-3 5.5-7.2 5.5-12 0-8.9-7.2-16-16-16zm0 29c-2.8 0-5.3-.9-7.5-2.4.5-.9.9-1.3 1.4-1.8.7-.5 1.5-.8 2.4-.8h7.2c.9 0 1.7.3 2.4.8.5.4.9.8 1.4 1.8-2 1.5-4.5 2.4-7.3 2.4zm9.7-4.4c-.5-.9-1.1-1.5-1.9-2.1-1.2-.9-2.7-1.4-4.2-1.4h-7.2c-1.5 0-3 .5-4.2 1.4-.8.6-1.4 1.2-1.9 2.1C4.2 22.3 3 19.3 3 16 3 8.8 8.8 3 16 3s13 5.8 13 13c0 3.3-1.2 6.3-3.3 8.6zM16 5.7c-3.9 0-7 3.1-7 7s3.1 7 7 7 7-3.1 7-7-3.1-7-7-7zm0 11c-2.2 0-4-1.8-4-4s1.8-4 4-4 4 1.8 4 4-1.8 4-4 4z"></path></svg>
	                      </span>
	                      <span>프로필</span>
	                    </a></li>
	                    <li><a href="#">
	                      <span class="header_modal_user_icon">
	                        <svg aria-label="저장됨" class="_8-yf5 " fill="#262626" height="16" viewBox="0 0 32 32" width="16"><path d="M28.7 32c-.4 0-.8-.2-1.1-.4L16 19.9 4.4 31.6c-.4.4-1.1.6-1.6.3-.6-.2-.9-.8-.9-1.4v-29C1.8.7 2.5 0 3.3 0h25.4c.8 0 1.5.7 1.5 1.5v29c0 .6-.4 1.2-.9 1.4-.2.1-.4.1-.6.1zM4.8 3v23.9l9.4-9.4c.9-.9 2.6-.9 3.5 0l9.4 9.4V3H4.8z"></path></svg>
	                      </span>
	                      <span>저장됨</span>
	                    </a></li>
	                    <li><a href="#">
	                      <span class="header_modal_user_icon">
	                        <svg aria-label="설정" class="_8-yf5 " fill="#262626" height="16" viewBox="0 0 32 32" width="16"><path d="M31.2 13.4l-1.4-.7c-.1 0-.2-.1-.2-.2v-.2c-.3-1.1-.7-2.1-1.3-3.1v-.1l-.2-.1v-.3l.5-1.5c.2-.5 0-1.1-.4-1.5l-1.9-1.9c-.4-.4-1-.5-1.5-.4l-1.5.5H23l-.1-.1h-.1c-1-.5-2-1-3.1-1.3h-.2c-.1 0-.1-.1-.2-.2L18.6.9c-.2-.5-.7-.9-1.2-.9h-2.7c-.5 0-1 .3-1.3.8l-.7 1.4c0 .1-.1.2-.2.2h-.2c-1.1.3-2.1.7-3.1 1.3h-.1l-.1.2h-.3l-1.5-.5c-.5-.2-1.1 0-1.5.4L3.8 5.7c-.4.4-.5 1-.4 1.5l.5 1.5v.5c-.5 1-1 2-1.3 3.1v.2c0 .1-.1.1-.2.2l-1.4.7c-.6.2-1 .7-1 1.2v2.7c0 .5.3 1 .8 1.3l1.4.7c.1 0 .2.1.2.2v.2c.3 1.1.7 2.1 1.3 3.1v.1l.2.1v.3l-.5 1.5c-.2.5 0 1.1.4 1.5l1.9 1.9c.3.3.6.4 1 .4.2 0 .3 0 .5-.1l1.5-.5H9l.1.1h.1c1 .5 2 1 3.1 1.3h.2c.1 0 .1.1.2.2l.7 1.4c.2.5.7.8 1.3.8h2.7c.5 0 1-.3 1.3-.8l.7-1.4c0-.1.1-.2.2-.2h.2c1.1-.3 2.1-.7 3.1-1.3h.1l.1-.1h.3l1.5.5c.1 0 .3.1.5.1.4 0 .7-.1 1-.4l1.9-1.9c.4-.4.5-1 .4-1.5l-.5-1.5V23l.1-.1v-.1c.5-1 1-2 1.3-3.1v-.2c0-.1.1-.1.2-.2l1.4-.7c.5-.2.8-.7.8-1.3v-2.7c0-.5-.4-1-.8-1.2zM16 27.1c-6.1 0-11.1-5-11.1-11.1S9.9 4.9 16 4.9s11.1 5 11.1 11.1-5 11.1-11.1 11.1z"></path></svg>
	                      </span>
	                      <span>설정</span>
	                    </a></li>
	                    <li class="modalOpen modalClose" data-id="userChange"><a href="#">
	                      <span class="header_modal_user_icon">
	                        <svg aria-label="계정 전환" class="_8-yf5 " fill="#262626" height="16" viewBox="0 0 32 32" width="16"><path d="M10.3 10.7c0-.8-.7-1.5-1.5-1.5H4.9C7.2 5.4 11.4 3 16 3c3.6 0 7 1.5 9.5 4.1.5.6 1.5.6 2.1.1.6-.6.6-1.5.1-2.1-3-3.2-7.3-5-11.7-5C10.7 0 6 2.5 3 6.7V3.5C3 2.7 2.3 2 1.5 2S0 2.7 0 3.5v7.2c0 .8.7 1.5 1.5 1.5h7.3c.8 0 1.5-.6 1.5-1.5zm20.2 9.1h-7.2c-.8 0-1.5.7-1.5 1.5s.7 1.5 1.5 1.5h3.8C24.8 26.6 20.6 29 16 29c-3.6 0-7-1.5-9.5-4.1-.5-.6-1.5-.6-2.1-.1-.6.6-.6 1.5-.1 2.1 3 3.2 7.3 5 11.7 5 5.3 0 10-2.5 13-6.7v3.2c0 .8.7 1.5 1.5 1.5s1.5-.7 1.5-1.5v-7.2c0-.8-.7-1.4-1.5-1.4z"></path></svg>
	                      </span>
	                      <span>계정 전환</span>
	                    </a></li>
	                    <li><a href="#">로그아웃</a></li>
	                  </ul>
	                </div>
	              </div>
	            </div>
	            <!-- h_right -->
	          </div>
	        </div>
	      </div>
	    </div>
	  </header>
	
	    <main>
	      <section id="mainSection">
	        <div class="container">      
	
	            <!--메뉴바-->
	            <div class="menuBar">
	              <a class="menuBar_one clicked" href="../html/post.html">
	                <span class="menuBar_pic">
	                  <svg class="menuBar_icon" fill="currentColor"  viewBox="0 0 448 512" >
	                  <path d="M416 32H32A32 32 0 0 0 0 64v384a32 32 0 0 0 32 32h384a32 32 0 0 0 32-32V64a32 32 0 0 0-32-32zm-32 64v128H256V96zm-192 0v128H64V96zM64 416V288h128v128zm192 0V288h128v128z">
	                  </path></svg>
	                  <span class="munuBar_manuName">게시물</span>
	                </span><!--메뉴버튼-->
	              </a>
	              <a class="menuBar_one" href="../html/save.html">
	                <span class="menuBar_pic">
	                  <svg class="menuBar_icon" fill="currentColor"  viewBox="0 0 384 512" >
	                  <path d="M336 0H48C21.49 0 0 21.49 0 48v464l192-112 192 112V48c0-26.51-21.49-48-48-48zm0 428.43l-144-84-144 84V54a6 6 0 0 1 6-6h276c3.314 0 6 2.683 6 5.996V428.43z"></path>
	                  </svg>
	                  <span class="munuBar_manuName">저장됨</span>
	                </span><!--메뉴버튼-->
	              </a>
	              <a class="menuBar_one" href="../html/teg.html">
	                <span class="menuBar_pic"> 
	                  <svg  class="menuBar_icon" fill="currentColor"  viewBox="0 0 384 512" >
	                  <path d="M336 0H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48zm0 464H48V48h288v416zM144 112h96c8.8 0 16-7.2 16-16s-7.2-16-16-16h-96c-8.8 0-16 7.2-16 16s7.2 16 16 16zm48 176c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm-89.6 128h179.2c12.4 0 22.4-8.6 22.4-19.2v-19.2c0-31.8-30.1-57.6-67.2-57.6-10.8 0-18.7 8-44.8 8-26.9 0-33.4-8-44.8-8-37.1 0-67.2 25.8-67.2 57.6v19.2c0 10.6 10 19.2 22.4 19.2z"></path>
	                  </svg>
	                  <span class="munuBar_manuName">태그됨</span>
	                </span><!--메뉴버튼-->
	              </a>      
	            </div>
	            <!--메뉴바-->
	             
	            <!--갤러리-->
	            <div class="gallery">
	
	              <!--1.내계정 게시물 없음
	              
	              <div class="gallery_no_main">
	                <div class="gallery_no_main_pic"> 
	                  <img class="gallery_no_main_pic_pic" src="${pageContext.request.contextPath}/assets/images/nopic1.jpg">
	              </div>
	              
	                <div class="gallery_no_main_box">
	                  <div class="gallery_no_main_info">
	                    <div class="gallery_no_main_info_box">
	                      <h2 class="gallery_no_main_text_big">소중한 순간을 포착하여 공유해보세요.</h2>
	                      <h3 class="gallery_no_main_text_small">앱을 다운로드하고 첫 사진이나 동영상을 공유해보세요.</h3>
	                      <div class="gallery_no_main_logo"> 
	                        <a target="_blank" href="https://apps.apple.com/app/instagram/id389801252?vt=li">
	                          <img class="gallery_no_main_info_pic" src="${pageContext.request.contextPath}/assets/images/nopic2.png"/></a>
	                        <a target="_blank" href="https://play.google.com/store/apps/details?id=com.instagram.android&referrer=utm_source%3Dinstagramweb%26utm_campaign%3DprofilePage%26ig_mid%3D4E87E08D-5723-455B-9D58-937C587D6490%26utm_content%3Dli%26utm_medium%3Dbadge">
	                          <img class="gallery_no_main_info_pic" src="${pageContext.request.contextPath}/assets/images/nopic3.png"/></a>
	                      </div>
	                   </div>
	                  </div>
	              </div>
	                
	                
	              </div>
	              -->
	              
	            
	
	              <!--2.타인계정 게시물 없음
	              <div class="gallery_no">
	              <div class="gallery_no_content">
	                        
	                <div class="gallery_no_icon">
	                    <img src="${pageContext.request.contextPath}/assets/images/mark3.png"/>
	                </div>
	                <div class="gallery_no_content_info">
	                    <h1 class="gallery_no_content_info_text">사진 없음</h1>
	                </div>
	
	            </div>
	          </div>
	          -->
	
	
	             <!--3.게시물 올린게 있음-->
	              <div class="gallery_line">
	                <div class="gallery_match my modalOpen" data-id="gallery_open">
	                  <div class="gallery_heart_info">
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                      <path  d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path>
	                    </svg>
	                    <span>58446</span>
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path>
	                    </svg>
	                    <span>0</span>
	                  </div>
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/testImg8.jpg"/>
	                  </div>
	                </div>
	
	                <div class="gallery_match my modalOpen" data-id="gallery_open">
	                  <div class="gallery_heart_info">
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                      <path  d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path>
	                    </svg>
	                    <span>58446</span>
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path>
	                    </svg>
	                    <span>0</span>
	                  </div>
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/testImg10.jpg"/>
	                  </div>
	                </div>
	
	                <div class="gallery_match my modalOpen" data-id="gallery_open">
	                  <div class="gallery_heart_info">
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                      <path  d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path>
	                    </svg>
	                    <span>5</span>
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path>
	                    </svg>
	                    <span>10</span>
	                  </div>
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/testImg11.jpg"/>
	                  </div>
	                </div>
	              </div>
	              <!--한줄-->
	
	              <div class="gallery_line">
	                <div class="gallery_match my modalOpen" data-id="gallery_open">
	                  <div class="gallery_heart_info">
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                      <path  d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path>
	                    </svg>
	                    <span>58446</span>
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path>
	                    </svg>
	                    <span>0</span>
	                  </div>
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/testImg3.jpg"/>
	                  </div>
	                </div>
	
	                <div class="gallery_match my modalOpen" data-id="gallery_open">
	                  <div class="gallery_heart_info">
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                      <path  d="M256 32C114.6 32 0 125.1 0 240c0 49.6 21.4 95 57 130.7C44.5 421.1 2.7 466 2.2 466.5c-2.2 2.3-2.8 5.7-1.5 8.7S4.8 480 8 480c66.3 0 116-31.8 140.6-51.4 32.7 12.3 69 19.4 107.4 19.4 141.4 0 256-93.1 256-208S397.4 32 256 32z"></path>
	                    </svg>
	                    <span>58446</span>
	                    <svg class="gallery_heart_icon" fill="currentColor" viewBox="0 0 512 512">
	                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path>
	                    </svg>
	                    <span>0</span>
	                  </div>
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/testImg2.jpeg"/>
	                  </div>
	                </div>
	
	                <div class="gallery_match">
	                  <div class="gallery_one">
	                    <img class="gallery_item" src="${pageContext.request.contextPath}/assets/images/empty.png"/>
	                  </div>
	                </div>
	              </div>
	
	             
	
	          <div class="modal" id="gallery_open">
	            <div class="modal_cancell_ground">
	              <div class="modal_background">
	                          <div class="post_modal">
	                              아이우에오
	                          </div>
	                    </div>
	                  </div>
	          </div>
	
	          <!--갤러리-->
	
	          
	        </div>
	      </section>
	    </main>
	
	
	  
		<footer id="footer" class="post_footer">
	              <div class="post_footer_info">
	                <ul >
	                  <li>소개</li>
	                  <li>블로그</li>
	                  <li>채용 정보</li>
	                  <li>도움말</li>
	                  <li>API</li>
	                  <li>개인정보처리방침</li>
	                  <li>약관</li>
	                  <li>위치</li>
	                  <li>인기 계정</li>
	                  <li>해시태그</li>
	                  <li>위치</li>
	                </ul>
	              </div>
	              <span class="footer_source">© 2020 INSTAGRAM FROM FACEBOOK</span>
	            </footer>
	
	
	
	
	
	</body>

	<script src="${pageContext.request.contextPath}/assets/js/main.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/mainPage.js" type="text/javascript"></script>
</html>