<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Timple</title>
		<link rel="stylesheet" href="/css/common.css" />
		<link rel="stylesheet" href="/css/metro-bootstrap.min.css" />
		<style>
			
			#signUpBox {
				width: 300px; height: 700px;
				margin: 10px auto; padding: 10px;
			}
			
			#signUpBox input, #signUpBox button { margin: 5px 0px; }
			#signUpBox .signUp-external { width: 135px; }
			
		</style>
	</head>
<body class="metro">
	 <%@ include file="/base/header.jsp" %>
	 
	 <div id="signUpBox">
	 	 <h2>팀 프로젝트를 효율적으로 관리해보세요!</h2>
		 <div class="input-control text">
		 	<input type="text" placeholder="Email" />
		 	<input type="text" placeholder="Password" />
		 	<input type="text" placeholder="Re-enter Password" />
			<input type="button" value="이메일로 10초만에 가입" />
			<input class="signUp-external button primary" type="button" value="FaceBook" style="float: left;" /> 
			<input class="signUp-external button danger" type="button" value="Google+"  style="float: right;" />
		 </div>
	 
	 </div>
	 
	 <%@ include file="/base/footer.jsp" %>
	 
	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	 <script src="/js/metro.min.js"></script>
	 
</body>
</html>