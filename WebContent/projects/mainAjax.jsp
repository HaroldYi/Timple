<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   	<%-- <c:if test="${sort eq 'Ajax'}"> --%>
   	<% String sort = request.getParameter("sort");
   	if() { } %>
    <div>
	<h3>확인란</h3>
		<form method="GET" action="/Test.do">	
			<input type="text" value="입력하세요!!" style="width:100px; display: inline;"/>		
			<input id="sel1"type="button" value=" 2번 적용" onclick="sel()"/>	
			<input type="button" value=" 텍스트 전송" onclick="trans()"/>
		</form>
	</div>
	
	<div id="AjaxWindow"></div> <!-- Ajax를 구현한 창 -->
	
    <script>
    	function sel() { 
			$.ajax({
				type:"GET",
				url:"bodyAjax.jsp",		
				success: callBack		
			});	
			function callBack(result) {				
				$("#AjaxWindow").html(result);							
			}
    	}
    	function trans() {
			document.forms[0].submit();
		}
	</script>
	<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>		
	<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>  -->
	<%-- </c:if> --%>
	<%-- 
	<c:if test="${sort eq 'screen'}">
<!DOCTYPE>
<html>	
	 
<head>
<meta charset="UTF-8">
<title>Timple</title>
<link rel="stylesheet" href="../css/timple.css" />
<link rel="stylesheet" href="../css/common.css" />
<script src="../js/vendor/modernizr.js"></script>
<!-- Side Menu Script Start-->
<link rel="stylesheet" href="../css/sidemenu/layout.css" media="screen" />
<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>		
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<script src="../js/sidemenu/hideshow.js"></script>
<script src="../js/sidemenu/jquery.tablesorter.min.js"></script>
<script src="../js/sidemenu/jquery.equalHeight.js"></script>
<!-- Side Menu Script Start -->

<!-- Gantt Start -->
<link rel="stylesheet" type="text/css"
	href="/css/gantt/jquery-ui-1.8.4.css" />
<link rel="stylesheet" type="text/css" href="/css/gantt/reset.css" />
<link rel="stylesheet" type="text/css"
	href="/css/gantt/jquery.ganttView.css" />
<!-- Gantt End -->
<style type="text/css">
#sidebar {
	float: left;
	min-height: 700px;
}

footer {
	clear: both;
}
#main-body {
	margin: 10px;
	padding: 10px;
	width: 1150px; /* 75% */
	min-height: 100%;
	border: 1px solid red;
	display: inline-block;
}
#num {
	font-size: 30px;
}
</style>
</head>
<body>
	<%@ include file="../base/header2.jsp"%>
	<!-- Side Menu Start -->
	
	<aside id="sidebar" class="column"
		style="margin-top: 0px; min-height: 820px;">
		<div class="user">
			<img src="" alt="" />
			<p>
				John Doe (<a href="#">3 Messages</a>)
			</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>

		<h3>Content</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="#" onclick="sel();">Ajax로 1번 적용</a></li>
			<li class="icn_edit_article"><a href="mainAjax.jsp">링크로 1번 적용</a></li>
			<li class="icn_categories"><a href="#">Categories</a></li>
			<li class="icn_tags"><a href="#">Tags</a></li>
		</ul>
		<h3>Users</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">Add New User</a></li>
			<li class="icn_view_users"><a href="#">View Users</a></li>
			<li class="icn_profile"><a href="#">Your Profile</a></li>
		</ul>
		<h3>Media</h3>
		<ul class="toggle">
			<li class="icn_folder"><a href="#">File Manager</a></li>
			<li class="icn_photo"><a href="#">Gallery</a></li>
			<li class="icn_audio"><a href="#">Audio</a></li>
			<li class="icn_video"><a href="#">Video</a></li>
		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<li class="icn_settings"><a href="#">Options</a></li>
			<li class="icn_security"><a href="#">Security</a></li>
			<li class="icn_jump_back"><a href="#">Logout</a></li>
		</ul>
	</aside>

	<div id="main-body">
		<script>
    	function change() {
    		$("#num").css("color","red");	
    	}    
    	</script>
    	<div id="num">2번입니다.</div>
    	<input type="button" value=" 색상 변경 " onclick="change();"/>			
	</div>
	
	<footer>
		<%@ include file="../base/footer.jsp"%>
		<script src="../js/foundation.min.js"></script>
	</footer>
	<script>
	function sel(){		
		$.ajax({
			type:"POST",
			url:"mainAjax.jsp",
			data:"sort=Ajax",
			success: callBack
		});	
		function callBack(result) {		
			
			$("#main-body").html(result);
		}
	}
	</script>
	</c:if> 
</body>
</html> --%>
    
	