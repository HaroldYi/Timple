/**
 * timple.js
 */

/* Warning Variable */
var empty_email = "이메일 주소를 입력해주세요.";
var wrong_email = "이메일 주소가 맞나요?";
var duplicate_email = "이미 사용중인 이메일 주소입니다.";

var empty_name = "멋진 이름이 있으시잖아요.";
var wrong_name = "이름은 두 글자 이상 입력해주세요.";

var empty_tel = "전화번호를 입력해주세요.";
var wrong_tel = "전화번호를 다시 확인해주세요.";

var empty_password = "비밀번호를 입력해주세요.";
var wrong_password = "6~20자 영문 대 소문자, 숫자, 특수문자를 사용해주세요.";
var check_password = "비밀번호가 일치하지 않습니다.";

/* Warning function */
$.fn.showWarning = function(state) {
	var type = $(this).attr("name");
	var warning = state + "_" + type;	
	var defaultClass = ".war-text.";

	if ($(defaultClass + type).length == 1) {
		if ($(defaultClass + type + "." + state).length == 0) {
			$(defaultClass + type).text(eval(warning)).attr("class", "war-text " + state + " " + type);
		}
		return $(this);
	} else {
		$("<span/>", {
			class: "war-text " + state + " " + type, text: eval(warning)
		}).insertBefore($(this));
		return $(this).addClass("war-state");
	}
	
};

$.fn.removeWarning = function(type) {
	var className = "." + type + "." + $(this).attr("name");
	if ($(className).length == 1) {
		$(className).remove();
		$(this).removeClass("war-state");
	}
};


/* isValid check */
$.fn.isValidEmail = function() {
	var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return pattern.test($(this).val());
};

$.fn.isValidName = function() {
	var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9)]/gi;
	return pattern.test($(this).val());
};

$.fn.isValidTel = function() {
	var pattern = "/^[0-9]*$/";
	return pattern.test($(this).val());
};

$.fn.isValidPassword = function() {
	var pattern = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{6,12}$/;
	return pattern.test($(this).val());
};

/* 

/* Popup */
var popupState = false;