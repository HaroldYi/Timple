<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Timple</title>
		<link rel="stylesheet" href="/css/timple.css" />
		<link rel="stylesheet" href="/css/common.css" />
		<script src="/js/vendor/modernizr.js"></script>
	</head>
<body>
	<%@ include file="/base/header.jsp"%>
	
	<div class="popup-mask"></div>
	<div class="popup-wrap popup-login">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h4>로그인</h4>
		<div class="left">
			<h6>이메일주소로 로그인</h6>
			<form action="#" method="post">
				<input type="email" placeholder="이메일" name="" id="" />
				<input type="password" placeholder="비밀번호" name="" id="" />
				<input class="button" type="submit" value="로그인" />
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
			<a href="#">이메일 찾기</a>
			<a href="#">비밀번호 찾기</a>
		</div>
	</div>
	
	<div class="popup-wrap popup-signup">
		<a class="popup-close" href="#">
			<img src="images/popup_close.png" />
		</a>
		<h4>회원가입</h4>
		<div class="left">
			<h6>쉽고 간단하게 팀플에 가입해보세요!</h6>
			<input type="text" placeholder="이름" name="" id="" />
			<input type="password" placeholder="비밀번호" name="" id="" />
			<input type="password" placeholder="비밀번호 확인" name="" id="" />
			<select name="" id="" style="width: 50px; float: left; ">
				<option value="">02</option>
				<option value="">031</option>
				<option value="">010</option>
			</select>
			<input type="number" placeholder="나머지 번호" name="" id="" style="width: 210px; float: right;"/>
			<input class="button" type="submit" value="회원가입하기" />
		</div>
		<div class="right">
			 <h6>추가 입력 정보??(~~를 위한 선택사항입니다.)</h6>
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
			 	<option value="">1년 이하</option>
			 	<option value="">2년 이하</option>
			 	<option value="">3년 이하</option>
			 	<option value="">4년 이하</option>
			 	<option value="">5년 이하</option>
			 </select>
			 
		</div>
	</div>
	
	<!-- 회원가입 시 필요한 것들: 이름, 비밀번호, 비밀번호 확인, 휴대폰 앞번호, 휴대폰 뒷번호, /// 선택 사항 (1차 직종, 2차 직종, 경력)-->
	
	
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
			
			<input type="email" placeholder="이메일" name="email" id="email" /> 
			<!-- <input type="password" value="Password" /> 
			<input type="password" value="Re-enter Password" />  -->
			<input class="button sign" type="button" value="이메일로 10초만에 가입" /> 
				
			
		</div>
	
	</div>
	

	
	
	

	<%@ include file="/base/footer.jsp"%>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script>
	
		$(".popup-mask").show(); //test
		
		//$(".popup-signup").show(); //test
		
		$(".popup-login").show(); //test
		
		$(".button.sign").click(function() {
			if ($("#email").val() == "") {
				if ($(".error-text").length == 0) {
					$(" <span class='error-text'>이메일 주소가 입력되지 않았습니다.</span> ").insertAfter( $("#email") );
					$("#email").css("border-color", "#e74c3c");
					
					var counter = 0;
					var interval = setInterval(function() {
						counter++;
						if (counter == 5) {
							$(".error-text").remove();
							$("#email").css("border-color", "#ccc");
							clearInterval(interval);
						}
					}, 1000);
				}
			}
		});
		
		$("#email").click(function() {
			$(".error-text").remove();
			$(this).css("border-color", "#ccc");
		});
		
		
	
	</script>

</body>
</html>