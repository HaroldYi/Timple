<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Timple</title>
		<link rel="stylesheet" href="/css/timple.css" />
		<link rel="stylesheet" href="/css/common.css" />
		
		<script src="/js/jquery-1.11.0.min.js"></script>
		<script src="/js/vendor/modernizr.js"></script>
		<style type="text/css">
		
		.button-wrap {
  		background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #e3e3e3), color-stop(100%, #f2f2f2));
  		background: -webkit-linear-gradient(top, #e3e3e3, #f2f2f2);
  		background: -moz-linear-gradient(top, #e3e3e3, #f2f2f2);
  		background: -o-linear-gradient(top, #e3e3e3, #f2f2f2);
  		background: linear-gradient(top, #e3e3e3, #f2f2f2);
  		-webkit-border-radius: 200px;
  		-moz-border-radius: 200px;
  		-ms-border-radius: 200px;
  		-o-border-radius: 200px;
  		border-radius: 200px;
  		-webkit-box-shadow: inset 0px 1px 3px rgba(0, 0, 0, 0.04);
  		-moz-box-shadow: inset 0px 1px 3px rgba(0, 0, 0, 0.04);
  		box-shadow: inset 0px 1px 3px rgba(0, 0, 0, 0.04);
  		padding: 10px;
  		display: inline-block; }
  			
			#menu {
				text-align: center;
				width: 700px;
				margin: 0px auto;
				
			}
			#menu1 {
				margin-left: 300px;
				width: 700px;
				text-align: center;
				border: 1px solid gray;
			}
					
			#leftmenu {
				float: left;
				width: 300px;
				height: 700px;
				background: no-repeat;
				border: 1px solid black;
			}
			
			.skin {
				width: 230px;
				height: 150px;
				padding: 10px;
				float: left;
				border: 1px solid red;
			}
			
			img {
				width: 200px;
				height: 100px;
				cursor: pointer;
			}
			
			.p {
				text-align: left;
				padding: 10px;
				margin-bottom: 0px;
			}
			
			#title {
				width: 700px;
				height: 100px;
				text-align: center;
				border: 1px solid black;
				margin-left: 300px;
			}
		</style>
		<script type="text/javascript">
		$(document).ready( function() {
			
	        $("#img1").click(function() {
	        	$('#leftmenu').css("background-image", "url('images/80.jpg')").css("opacity", "0.2");
	        });
	        
	        $("#img2").click(function() {
	        	$('#leftmenu').css("background-image", "url('images/81.jpg')").css("opacity", "0.2");
	        });
	        
	        $("#img3").click(function() {
	        	$('#leftmenu').css("background-image", "url('images/82.jpg')").css("opacity", "0.2");
	        });
	        
	        $("#img4").click(function() {
	        	$('#leftmenu').css("background-image", "url('images/84.jpg')").css("opacity", "0.2");
	        });
	        
	        $("#img5").click(function() {
	        	$('#leftmenu').css("background-image", "url('images/88.jpg')").css("opacity", "0.2");
	        });
	      } );
		</script>
	</head>
<body>
	
	<nav class="top-bar" data-topbar>
	<ul class="title-area">
		<li class="name">
 			<h1><a href="#">TIMPLE</a></h1>
		</li>
	</ul>
	
	<section class="top-bar-section">
	
		<!-- Left Nav Section -->
		<ul class="left">
			<li><a href="#">프로젝트 목록</a></li>
			<li><a href="#">프로젝트 등록</a></li>
			<li><a href="#">커뮤니티</a></li>
		</ul>
		
		<!-- Right Nav Section -->
		<ul class="right">
			<li class="has-dropdown">
				<a href="#">나의 프로젝트</a>
				<ul class="dropdown">
					<li><a href="#">프로젝트 1</a></li>
					<li><a href="#">프로젝트 2</a></li>
					<li><a href="#">프로젝트 3</a></li>
				</ul>
			</li>
			<li><a href="#">이진호</a></li>
		</ul>
	
	</section>
</nav>
		
		
		<div id="leftmenu">
		<p>왼쪽 메뉴</p>
			
		</div>
		<div id="title">제 목</div>
	<div id="menu">
		<input type="button" value="테마 변경" onclick="location.href='Theme.jsp'" class="button"/>
		<input type="button" value="순서 변경" class="button"/>
		<input type="button" value="전체 쪽지" class="button"/>
		<input type="button" value="이름 수정" class="button"/>
	</div>
	
		<div id="menu1">
			<div><p class="p">TimPl의 왼쪽메뉴 스킨이 변경됩니다.</p></div>
			<div class="skin"><img src="images/80.jpg" id="img1" /><p>스킨1</p></div>
			<div class="skin"><img src="images/81.jpg" id="img2" /><p>스킨2</p></div>
			<div class="skin"><img src="images/82.jpg" id="img3" /><p>스킨3</p></div>
			<div class="skin"><img src="images/84.jpg" id="img4" /><p>스킨4</p></div>
			<div class="skin"><img src="images/88.jpg" id="img5" /><p>스킨5</p></div>
			<div class="skin"><img src="images/88.jpg" id="img5" /><p>스킨6</p></div>
			<div class="skin"><img src="images/88.jpg" id="img5" /><p>스킨7</p></div>
			<div class="skin"><img src="images/88.jpg" id="img5" /><p>스킨8</p></div>
			<div class="skin"><img src="images/88.jpg" id="img5" /><p>스킨9</p></div>
			<div>
			<input type="button" value="적용" class="button-wrap" onclick="location.href='Theme.jsp'"style="margin: 20px;"/>
			<input type="button" value="취소" class="button-wrap" onclick="location.href='Theme.jsp'"/>
			</div>
		</div>
	
	<div style="clear:both;">	
	<%@ include file="/base/footer.jsp" %>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>