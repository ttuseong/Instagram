var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

var userEmail = false;
var userName = false;
var userId = false;
var userPw = false;

$("input[name=userEmail]").on("propertychange change keyup paste input", function(){
	if($("input[name=userEmail]").val().length > 0){
		userEmail = true;
	} else{
		userEmail = false;
	}
	
	activeCheck();
});

$("input[name=userName]").on("propertychange change keyup paste input", function(){
	if($("input[name=userName]").val().length > 0){
		userName = true;
	} else{
		userName = false;
	}
	
	activeCheck();
});

$("input[name=userId]").on("propertychange change keyup paste input", function(){
	if($("input[name=userId]").val().length > 0){
		userId = true;
	} else{
		userId = false;
	}
	
	activeCheck();
});

$("input[name=userPw]").on("propertychange change keyup paste input", function(){
	if($("input[name=userPw]").val().length > 0){
		userPw = true;
	} else{
		userPw = false;
	}
	
	activeCheck();
});

function activeCheck(){
	if(userEmail && userName && userId && userPw){
		$(".regBtn").addClass("active");
	} else{
		$(".regBtn").removeClass("active");
	}
}

$(".regBtn").on("click", function(){
	if($(this).hasClass("active")){
		var formData = {userEmail : $("input[name=userEmail]").val(),
						userName : $("input[name=userName]").val(),
						userId : $("input[name=userId]").val(),
						userPw : $("input[name=userPw]").val()};
		
		console.log(formData);
		
		$.ajax({		
			url : url+"/regSucces",			
			type: "post",
           	contentType : "application/json",
			data : formData,
			dataType : "json",
			success : function(categoryUpdate){
				console.log(categoryUpdate);
			},	
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}	
		});
	}
});