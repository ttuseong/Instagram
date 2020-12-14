// 서브 컨텐츠 위치를 조정할 때 고정으로 필요한 값
var basicLeft = $(".maincontents").outerWidth(true);

//브라우저가 시작될 때 호출
$(document).ready(function(){
  subcontentsMove();
})

//브라우저의 크기가 변경될 때 호출
$(window).resize(function(){
  subcontentsMove();
});

// 메인 페이지 서브 컨텐츠 위치 조정
function subcontentsMove(){
  var left = Number($('.maincontainer').css("margin-left").replace('px', '')) + basicLeft;

  $('.subcontents').css('left', left+'px');
}

$(".h_right li").on("click", function(){
  var target = $(this)
  console.log(target);

  var id = target.data("id");
  console.log(id);
  modal(id, "show");
})
