/**
 * timple.js
 */

/* Default Setting */
var tel_array = ['010', '011', '016', '017', '019', '02', '031','032','033','041','043','042','044','051','052','053','054','055','061','062','063','064','070'];

/* Warning Variable */
var empty_email = "이메일 주소를 입력해주세요.";
var wrong_email = "이메일 주소가 맞나요?";
var duplicate_email = "이미 사용중인 이메일 주소입니다.";

var empty_name = "멋진 이름이 있으시잖아요.";
var short_name = "이름은 두 글자 이상 입력해주세요.";
var wrong_name = "이름에는 한글, 영문 대소문자를 이용해 주세요.";

var empty_tel = "전화번호를 입력해주세요.";
var wrong_tel = "전화번호는 숫자만 입력해주세요.";

var empty_pw = "비밀번호를 입력해주세요.";
//var wrong_pw = "6~20자 영문 대소문자, 숫자, 특수문자를 사용해주세요.";
var wrong_pw = "6~20자 영문 대소문자, 숫자, 특수문자만 되요.";
var mismatch_pw = "비밀번호가 일치하지 않습니다.";

var mismatch_check_pw = "비밀번호가 일치하지 않습니다.";

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
	var pattern = /^[a-zA-Z가-힣]{2,20}$/;
	return pattern.test($(this).val());
};

$.fn.isValidTel = function() {
	var pattern = /^[0-9]*$/;
	return pattern.test($(this).val());
};

$.fn.isValidPassword = function() {
	var pattern = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{6,20}$/;
	return pattern.test($(this).val());
};

/* 

/* Popup */
var popupState = false;