//클릭 이벤트를 막는 함수
function preventClick(e) {
  e.preventDefault();
}

$(document).ready(function(){
  headerModalCancellPos();
})

//브라우저의 크기 변경시 호출
$(window).resize(function(){
  headerModalCancellPos();
});

//헤더에 사용되는 모달
//모달의 위치 변경
function headerModalCancellPos(){
  var leftPost = 242.5 + Number($('.maincontainer').css("margin-left").replace('px', '')) - $(".header_modal_cancell").width();
  $(".header_modal_cancell").css("left", leftPost+'px');
}

//모달 공통
//모달 호출
function modal(target, state){
  if(state == 'hide'){
    $("#"+target).css("display", "none");
  } else if(state == "show"){
    $("#"+target).css("display", "block");
  } else{
    console.log("상태 값이 이상합니다.")
  }
}

//모달의 취소 영역 클릭 시
$(".modal_cancell_ground").on("click", function(){
  $(this).parent().css("display", "none");
})
