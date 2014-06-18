<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
	<head>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<meta charset="UTF-8">
		<title>Timple</title>
		<link rel="stylesheet" href="/css/timple.css" />
		<link rel="stylesheet" href="/css/common.css" />
		
		<script src="js/jquery-1.11.0.min.js"></script>		
		<script src="/js/vendor/modernizr.js"></script>
		<!-- <script src="/js/foundation.min.js"></script> -->
	<script>
			/* window.onload = $(document).ready(function() {
				alert("enter");
				$("#main_sidebar_a").onmouseover = function() {
					alert("onmouseover");
					// $(result2).css("border-right","none");
					// $(result2).css("border-bottom","none");
				};			
			}); */
			
		
			function celBtn(result1) {				
				$(result1).css("border-right", "3px solid gray");
				$(result1).css("border-bottom", "3px solid gray");
				$(result1).css("background-color","white");
				/* $(result1).css("border-top", "0px");
				$(result1).css("border-left", "0px"); */
				
			}
			function selBtn(result2) {				
				$(result2).css("border-right","0px");
				$(result2).css("border-bottom","0px");
				$(result2).css("background-color","gray");
				
				/* $(result2).css("border-top", "3px solid gray");
				$(result2).css("border-left", "3px solid gray"); */
			}; 
		</script>
		<style>
			#main { min-height: 82%;}
			.main-sidebar { border-right: 3px solid gray;
							border-bottom: 3px solid gray;
							border-radius: 15px;
							width: 200px;
							height: 500px;
							background-color: black;
							margin-top: 5px;}
							
			.main-sidebar-section { width: 100%;
									text-align: center;																														
									}
			.main-sidebar-section a { border-right: 3px solid gray;
									border-bottom: 3px solid gray;
									width: 90%;
									height: 40px;									
									margin: 5px auto;									
									padding-top: 10px;
									border-radius: 10px;
									background-color: white;
									display: inline-block;																													
									}						
			.main-sidebar-section span { font-size: 15pt;
										font-weight: bold;}					
																	
		</style>
		
	</head><!-- onmouseover="selBtn();" onmouseout="celBtn();" -->
<body>
	<%@ include file="/base/header2.jsp" %>
	
	<div id="main">
		<div class="main-sidebar">
			<div style="padding:10px;"></div>
			<div class="main-sidebar-section" >
				<a onmouseover="selBtn(this);" onmouseout="celBtn(this);" href="#"><span>등 록</span></a>
			</div>
			<div class="main-sidebar-section">
				<a onmouseover="selBtn(this);" onmouseout="celBtn(this);" href="#">
				<span>수 정</span></a>
			</div>
			<div class="main-sidebar-section">
				<a onmouseover="selBtn(this);" onmouseout="celBtn(this);" href="#"><span>삭 제</span></a>
			</div>
			<div class="main-sidebar-section">
				<a onmouseover="selBtn(this);" onmouseout="celBtn(this);" href="#"><span>신 고</span></a>
			</div>
		</div>
		<div class="main-body">	
			메인	
		</div>
	</div>	
	
	<%@ include file="/base/footer.jsp" %>	
	
</body>
</html>