<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Timple</title>
		<link rel="stylesheet" href="css/timple.css" />
		<link rel="stylesheet" href="css/common.css" />
		<script src="js/vendor/modernizr.js"></script>
	</head>
<body>
	<%@ include file="/base/header.jsp" %>
	
	<div class="popup-mask"></div>
	<div class="popup-wrap popup-login">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>로그인</h3>
		<div class="left">
			<h6>이메일주소로 로그인</h6>
			 <form method="post" id="loginForm">
				<input type="text" placeholder="이메일" name="email" />
				<input type="password" placeholder="비밀번호" name="password" />
				<input class="button popup" type="submit" value="로그인" />
			</form>
 		</div>
		<div class="right">
			<h6>소셜 네트워크로 간편하게 로그인</h6>
			<button class="btn fb">
 				<span class="icon ic-fb"></span><span> Facebook</span>
 			</button>
			<button class="btn gg">
				<span class="icon ic-gg"></span><span> Google</span>
			</button>
		</div>
		
		<div class="bottom">
			<a href="#">이메일 찾기</a> | 
			<a href="#">비밀번호 찾기</a>
		</div>
	</div>
	
	<div class="popup-wrap popup-signup">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>회원가입</h3>
		<div class="left">
			<h6>쉽고 간단하게 팀플에 가입해보세요!</h6>
			<input type="text" placeholder="이름" name="" id="" />
			<input type="password" placeholder="비밀번호" name="" id="" />
			<input type="password" placeholder="비밀번호 확인" name="" id="" />
			<div class="row">
				<div class="small-3 columns" style="padding-left: 0px;">
					<select name="" id="">
						<option value="">02</option>
						<option value="">031</option>
						<option value="">010</option>
					</select>
				</div>
				<div class="small-9 columns" style="padding: 0px;">
					<input type="text" placeholder="나머지 번호" name="" id="" />
				</div>
			</div>
			<input type="checkbox" name="inform" checked /> <span class="check-label">팀 프로젝트 초대 알림에 동의합니다. </span>
			<input class="button popup" type="submit" value="회원가입하기" />
		</div>
		<div class="right">
			 <h6>추가 입력 정보 (선택사항)</h6>
			 <select name="" id="">
			 	<option value="">1차 직종</option>
			 	<option value="">1차 직종</option>
			 	<option value="">1차 직종</option>
			 	<option value="">1차 직종</option>
			 	<option value="">1차 직종</option>
			 </select>
			 <select name="" id="">
			 	<option value="">2차 직종</option>
			 	<option value="">2차 직종</option>
			 	<option value="">2차 직종</option>
			 	<option value="">2차 직종</option>
			 	<option value="">2차 직종</option>
			 </select>
			 <select name="" id="">
			 	<option value="">경력</option>
			 	<option value="">1년 이하</option>
			 	<option value="">2년 이하</option>
			 	<option value="">3년 이하</option>
			 	<option value="">4년 이하</option>
			 	<option value="">5년 이하</option>
			 </select>
		</div>
		<div class="bottom">
			 이미 회원이신가요? <a href="#">로그인 </a>해주세요!			
		</div>
	</div>	
	
	<div id="container-wrap">
	
		<div id="signup-container">
			
			<h3>팀 프로젝트를 효율적으로 관리해보세요!</h3>
			
			<button class="btn fb">
 				<span class="icon ic-fb"></span><span> Facebook</span>
 			</button>
			<button class="btn gg">
				<span class="icon ic-gg"></span><span> Google</span>
			</button>			
			
			<div class="horiz-bar">
			
				<span class="horiz-bar-line"></span>
				<span class="centered">또는</span>
				<span class="horiz-bar-line"></span>
				
			</div>
			
			<input type="text" placeholder="이메일" name="email" /> 
			
			<input class="button sign" type="button" value="이메일로 10초만에 가입" /> 
				
			
		</div>
	
	</div>

	
	<%@ include file="base/footer.jsp" %>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/foundation.min.js"></script>
	<script src="js/timple.js"></script>
	<script>
		
		var $signEmail = $("#signup-container input[name='email']");
		var $loginEmail = $("#loginForm input[name='email']");
		
		
		$signEmail.focus();
		
		// $("#test").click(function() {
			
		$(".popup-mask").show();
		$(".popup-signup").show();
		
		//});
		 
		login();
		
		function login() {
			
			//메인에서 로그인 버튼 누르면 자동포커스가게 하기
			$("#loginForm").submit(function(e) {
				
				console.log("submit 통과...");
				
				e.preventDefault();
				
				var flag = true;
				var $email = $(this).find("input[name='email']");
				var $password = $(this).find("input[name='password']");
				
				if ($email.val() == "") {
					$email.showWarning("empty").focus();
					flag = false;
				} else if (!$email.isValidEmail()) {
					$email.showWarning("wrong");
					flag = false;
				}
				
				if ($password.val() == "") {
					$password.showWarning("empty");
					
					if ($email.val() == "") {
						$email.focus();
					} else {
						$password.focus();
					}
					
					flag = false;
				}
				
				if (flag) {
					//ajax...
				}
				
			});
		}
		
		$loginEmail.keypress(function(e) {
			if (e.keyCode == 13) return false;
		});

		$loginEmail.blur(function() {
			console.log("blur");
			if ($(this).val() != "") {
				if ($(this).isValidEmail()) {
					$(this).removeWarning("wrong");
				} else {
					$(this).showWarning("wrong");
				}
			} else {
				$(this).removeWarning("wrong");
			}
		});
		 
		$loginEmail.on("input", function() {
			console.log("empty");
			$(this).removeWarning("empty");
		});
	
		$("#loginForm input[name=password]").on("keyup", function() {
			if ($(this).val != "") $(this).removeWarning("empty");
		});
		
		$(".popup-close").click(function() {
			
			if (popupState) {
				$(".popup-mask").hide();
				$(".popup-wrap").hide();
				popupState = false;
			}
			
		});
		
		function signUp() {
			
			if ($signEmail.val() == "") {
				$signEmail.showWarning("empty").focus();
			} else if ($signEmail.isValidEmail()) {
				$signEmail.removeWarning("wrong");
				$(".popup-mask").show();
				$(".popup-signup").show();
				popupState = true;
			} else {
				$signEmail.showWarning("wrong").focus();
			}
		}
		
		$("#signup-container .button.sign").click(function() {
			signUp();
		});
		
		$signEmail.on("keyup", function(e) {
			if (e.keyCode == 13) {
				signUp();
			} else if ($(this).val() != ""){
				$(this).removeWarning("empty");
			}
		});
		
		$signEmail.blur(function() {
						
			if ($(this).val() != "") {
				if (!$(this).isValidEmail()) {
					if ($(".war-text").length == 0) {
						
						$(this).showWarning("wrong");

					}
				} else {
					$(this).removeWarning("wrong");
				}
			}
		});
		
/* 		$signEmail.on("keyup", function(e) {
			if (e.keyCode == 13) {
				signUp();
			} else if ($(this).val() != ""){
				$(this).removeWarning("empty");
			}
		}).blur(function() {
						
			if ($(this).val() != "") {
				if (!$(this).isValidEmail()) {
					if ($(".war-text").length == 0) {
						
						$(this).showWarning("wrong");
	
					}
				} else {
					$(this).removeWarning("wrong");
				}
			}
		}); */
		
		
	
	</script>

</body>
</html>