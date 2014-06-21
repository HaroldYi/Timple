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
	<%@ include file="/base/header2.jsp" %>
	
	<div class="popup-mask"></div>
	
	<div class="popup-wrap popup-login">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>로그인</h3>
		<div class="left">
			<h6>이메일주소로 로그인</h6>
			 <form method="post" id="loginForm">
				 <div class="input-wrap">			 
					<input class="enterDefault" type="text" placeholder="이메일" name="email" />
				 </div>
				 <div class="input-wrap">			 
					<input type="password" placeholder="비밀번호" name="pw" />
				 </div>
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
			<a href="#" id="findEmailBtn">이메일 찾기</a> | 
			<a href="#" id="findPwBtn">비밀번호 찾기</a>
		</div>
	</div>

	<div class="popup-wrap popup-find email">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>이메일 찾기</h3>
		<div class="middle">
			<h6>이름과 전화번호를 입력해 주세요.</h6>
			 <form method="post" id="findEmailForm">
				 <div class="input-wrap">			 
					<input class="enterDefault" type="text" placeholder="이름" name="name" />
				 </div>
				 <div class="row">
					<div class="small-3 columns" style="padding-left: 0px;">
						<select class="tel_first" name="tel_first"></select>
					</div>
					<div class="small-9 columns" style="padding: 0px;">
						<input type="text" placeholder="나머지 번호" name="tel" maxlength="8" />
					</div>
				</div>
				<input class="button popup" type="submit" value="이메일 찾기" />
			</form>
 		</div>
		<div class="bottom">
			<a href="#">로그인 화면으로 돌아가기</a>
		</div>
	</div>

	<div class="popup-wrap popup-find pw">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>비밀번호 찾기</h3>
		<div class="middle">
			<h6>이름과 이메일 주소를 입력해 주세요.</h6>
			 <form method="post" id="findPwForm">
				 <div class="input-wrap">			 
					<input class="enterDefault" type="text" placeholder="이름" name="name" />
				 </div>
				<div class="input-wrap">
					<input type="text" placeholder="이메일" name="email" />
				</div>
				<input class="button popup" type="submit" value="질문 보기" />
			</form>
 		</div>
		<div class="bottom">
			<a href="#">로그인 화면으로 돌아가기</a>
		</div>
	</div>
	
	<div class="popup-wrap popup-find pw2">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>비밀번호 찾기</h3>
		<div class="middle">
			<h6>회원정보에 등록한 질문과 답변을 입력해 주시면 임시 비밀번호를 발급해 드립니다. 로그인하셔서 마이페이지에서 비밀번호 변경 꼭 해주세요!</h6>
			 <form method="post" id="resetPwForm">
				<h6><b>질문.</b> 야 답 무조건 1번이다.</h6>
				<div class="input-wrap">
					<input type="text" placeholder="답변" name="answer" />
				</div>
				<input class="button popup" type="submit" value="임시 비밀번호 발급" />
			</form>
 		</div>
		<div class="bottom">
			<a href="#">로그인 화면으로 돌아가기</a>
		</div>
	</div>
	
	<div class="popup-wrap popup-find resetPw">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>비밀번호 찾기</h3>
		<div class="middle">
			<h6>임시 비밀번호가 발급되었습니다. 이번엔 기억하기 쉬운걸로 바꿔주세요.</h6>
			<h6><b>임시 비밀번호.</b> r0a5i#g14</h6>
			<input class="button popup" type="submit" value="확인" />
 		</div>
	</div>
	
	<div class="popup-wrap popup-signup">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h3>회원가입</h3>
		<form id="signupForm">
			<div class="left">
				<h6>쉽고 간단하게 팀플에 가입해보세요!</h6>
				<div class="input-wrap">
					<input class="enterDefault" type="text" placeholder="이름" name="name" />
				</div>
				<div class="input-wrap">
					<input class="enterDefault" type="password" placeholder="비밀번호" name="pw" />
				</div>
				<div class="input-wrap">
					<input class="enterDefault" type="password" placeholder="비밀번호 확인" name="check_pw" />
				</div>
				<div class="row">
					<div class="small-3 columns" style="padding-left: 0px;">
						<select class="tel_first enterDefault" name="tel_first"></select>
					</div>
					<div class="small-9 columns" style="padding: 0px;">
						<input type="text" placeholder="나머지 번호" name="tel" maxlength="8" />
					</div>
				</div>
				<input type="checkbox" name="inform" checked /> <span class="check-label">팀 프로젝트 초대 알림에 동의합니다. </span>
				<input class="button popup" type="submit" value="회원가입하기" />
			</div>
			<div class="right">
				 <h6>추가 입력 정보 (선택사항)</h6>
				 <select class="enterDefault" name="oneCategory" id="oneCategory">
				 		<option value="0">업종 대분류</option>
					 <c:forEach items="${oneCategoryList}" var="name" varStatus="loop">
					 	<option value="${loop.index + 1}">${name}</option>
					 </c:forEach>
				 </select>
				 <select class="enterDefault" name="twocategory">
				 	<option value="">2차 직종</option>
				 	<option value="">2차 직종</option>
				 	<option value="">2차 직종</option>
				 	<option value="">2차 직종</option>
				 	<option value="">2차 직종</option>
				 </select>
				 <select class="enterDefault" name="career">
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
		</form>
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
		
	// 가끔 제멋대로 메인에서 email_empty 에러가 나올때가 있음.
	
		var $signEmail = $("#signup-container input[name='email']");
		var $loginEmail = $("#loginForm input[name='email']");
		
		var $name = $("#signupForm input[name='name']");
		var $pw = $("#signupForm input[name='pw']");
		var $check_pw = $("#signupForm input[name='check_pw']");
		var $tel_first = $("#signupForm select[name='tel_first']"); // option:selected
		var $tel = $("#signupForm input[name='tel']");
		
		$.each(tel_array, function(i, arr) {
		    $(".tel_first").append($("<option/>", {
		        value: arr, text: arr
		    }));
		});
		
		$("#oneCategory").change(function() {
			if ($(this).val() != 0) {
				
				$.ajax({
					
				});
			}
		});
		
		$signEmail.focus();
		
		// $("#test").click(function() {
			
		//$(".popup-mask").show();
		//$(".popup-find.resetPw").show();
		
		//});
		 
		login();
		
		$("#loginBtn").click(function() {
			$(".popup-mask").show();
			$(".popup-login").show();
			$loginEmail.focus();
		});
		
		$("#findEmailBtn").click(function(e) {
			$(".popup-wrap").hide();
			$(".popup-find.email").show();
		});
		
		$("#findPwBtn").click(function(e) {
			$(".popup-wrap").hide();
			$(".popup-find.pw2").show();
		});
		
		function login() {
			
			//메인에서 로그인 버튼 누르면 자동포커스가게 하기
			$("#loginForm").submit(function(e) {
								
				e.preventDefault();
				
				var flag = true;
				var $email = $(this).find("input[name='email']");
				var $loginPw = $(this).find("input[name='pw']");
				
				if ($email.val() == "") {
					$email.showWarning("empty").focus();
					flag = false;
				} else if (!$email.isValidEmail()) {
					$email.showWarning("wrong").focus();
					flag = false;
				}
				
				if ($loginPw.val() == "") {
					$loginPw.showWarning("empty");
					
					if ($email.val() == "") {
						$email.focus();
					} else {
						$loginPw.focus();
					}
					
					flag = false;
				}
				
				if (flag) {
					//ajax...
				}
				
			});
		}
		
		$(".enterDefault").keypress(function(e) {
			if (e.keyCode == 13) return false;
		});

		$loginEmail.blur(function() {
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
			$(this).removeWarning("empty");
		});
	
		$("#loginForm input[name='pw']").on("keyup", function() {
			if ($(this).val != "") $(this).removeWarning("empty");
		});
		
		$(".popup-close").click(function(e) {
			
			$(".war-text").remove();
			$(".war-state").removeClass("war-state");
			
			$(".popup-mask").hide();
			$(".popup-wrap").hide();
			
			$signEmail.focus(); // test 용.. 변수명 바꿔야함
			
		});
		
		function signUp() {
			
			if ($signEmail.val() == "") {
				$signEmail.showWarning("empty").focus();
			} else if ($signEmail.isValidEmail()) {
				$signEmail.removeWarning("wrong");
				$(".popup-mask").show();
				$(".popup-signup").show();
				$name.focus();
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
		
		
		
		$("#signupForm").submit(function(e) {
			
			e.preventDefault();

			
			
			var $onecategory = $(this).find("input[name='onecategory']");
			var $twocategory = $(this).find("input[name='twocategory']");
			var $career = $(this).find("input[name='career']");
			
			var $inform = $(this).find("input[name='inform']");
			
			if ($name.val() == "") $name.showWarning("empty").focus();			
			if ($pw.val() == "") $pw.showWarning("empty").focus();
			if ($check_pw.val() == "") $check_pw.showWarning("mismatch").focus();
			if ($tel.val() == "") $tel.showWarning("empty").focus();
			
			
		});
		
		$name.blur(function() {
			if ($(this).val() != "") {
				if ($(this).val().length < 2) {
					$(this).showWarning("short");
				} else if (!$(this).isValidName()){
					$(this).showWarning("wrong");
				} else {
					$(this).removeWarning("short");
					$(this).removeWarning("wrong");
				}
			} else {
				$(this).showWarning("empty");
			}
		});
		
		$name.on("input", function() {
			$(this).removeWarning("empty");
		});
		
		$pw.blur(function() {
			if ($(this).val() != "") {
				if (!$(this).isValidPassword()) {
					$(this).showWarning("wrong");
				} else {
					$(this).removeWarning("wrong");
				}
			} else {
				$(this).showWarning("empty");
			}
		});
		
		$pw.on("input", function() {
			$(this).removeWarning("empty");
		});
		
		$check_pw.blur(function() {
			if ($(this).val() != "") {
				if ($(this).val() != $pw.val()) {
					$(this).showWarning("mismatch");
				} else {
					$(this).removeWarning("mismatch");
				}
			} else {
				$(this).showWarning("mismatch");
			}
		});
		
		$check_pw.on("input", function() {
			if ($(this).val() != "") {
				if ($(this).val() != $pw.val()) {
					$(this).showWarning("mismatch");
				} else {
					$(this).removeWarning("mismatch");
				}
			} else {
				$(this).showWarning("mismatch");
			}
		});
		
		$tel.blur(function() {
			if ($(this).val() != "") {
				if (!$(this).isValidTel()) {
					$(this).showWarning("wrong");
				} else {
					$(this).removeWarning("wrong");
				}
			} else {
				$(this).showWarning("empty");
			}
		});
		
		$tel.on("input", function() {
			if ($(this).val() != "") {
				if (!$(this).isValidTel()) {
					$(this).showWarning("wrong");
				} else {
					$(this).removeWarning("wrong");
				}
			} else {
				$(this).showWarning("empty");
			}
		});
		
		
	</script>

</body>
</html>
