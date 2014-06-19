<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Timple</title>
<link rel="stylesheet" href="../css/timple.css" />
<link rel="stylesheet" href="../css/common.css" />
<link rel="stylesheet" href="/css/header.css"/>
<script src="../js/vendor/modernizr.js"></script>
<!-- Side Menu Script Start-->
<link rel="stylesheet" href="../css/sidemenu/layout.css" media="screen" />
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../js/sidemenu/hideshow.js"></script>
<script src="../js/sidemenu/jquery.tablesorter.min.js"></script>
<script src="../js/sidemenu/jquery.equalHeight.js"></script>
<script src="/js/header.js"></script>
<!-- Side Menu Script End -->

<!-- Gantt Start -->

<!-- Gantt End -->
<style type="text/css">
#title {
	width: 100%;
	height: 100px;
	border: 1px solid #333;
}

#title>p {
	font-size: 40px;
	margin: 10px auto;
	text-align: center;
}

#sidebar {
	float: left;
}

#content {
	float: left;
	width: 972px;
	min-height: 820px;
	border: 1px solid red;
}

#gantt{
	border: 1px solid blue;
	width: 800px;
	height: 500px;
	margin: 20px auto;
}
#content> h4{
	margin-left: 80px;
}
#todo{
	border: 1px solid green;
	width: 800px;
	height: 200px;
	margin: 20px auto;
}
.pPlan {
	border: 1px solid #333;
	margin: 5px;
	width: 150px;
	text-align: center;
}

.pPlan>#p1{ width: 50%; background-color: red;}
.pPlan>#p2{ width: 30%; background-color: yellow;}
.user {
	border: 1px solid red;
	margin: 10px;
}

#sidebar h3>a:hover{ text-decoration:none;}
#sidebar h3>a{ color: #1F1F20;}
footer {
	clear: both;
}
</style>
</head>
<body>
	<%@ include file="../base/header.jsp"%>
	<div id="title">
		<p>ElepamT 프로젝트</p>
	</div>
	<!-- Side Menu Start -->
	<aside id="sidebar" class="column">
		<!-- <div class="user">
			<img src="/images/member/진호pro.JPG" alt="프로필사진" />
			<p>
				John Doe (<a href="#">3 Messages</a>)
			</p>
			<a class="logout_user" href="#" title="Logout">Logout</a>
		</div> -->

		<h3>Project Plan</h3>
		<ul class="toggle">
			<li class="icn_new_article"><div id="request" class="pPlan">
					요구사항<div id="p1"></div>
				</div></li>
			<li class="icn_edit_article"><div id="design" class="pPlan">
					DB 설계<div id="p2"></div>	
				</div></li>
			<li class="icn_categories"></li>
			<li class="icn_tags"></li>
		</ul>
		<h3>게시판</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">자유게시판</a></li>
			<li class="icn_view_users"><a href="#">업무게시판</a></li>
			<li class="icn_profile"><a href="#">익명게시판</a></li>
		</ul>
		<h3><a href="#">예산관리</a></h3>
		
		<h3><a href="#">캘린더</a></h3>
		
		<h3><a href="#">팀원정보</a></h3>
		
		<h3><a href="#">자료실</a></h3>
		
	</aside>
	<!-- Side Menu End -->
	<section>
		<div id="content">
			<div id="gantt">ㅅㅂ 간트차트 자리</div>
			<h4>오늘의 팀 일정</h4>
			<div id="todo">
				<p>09 : 00 ~ 10 : 00 팀 뷰어를 이용한 회의 시작</p>
				<hr/>
				<p>12 : 00 ~ 13 : 00 팀 점심 회식</p>
				<hr />
			</div>
		</div>
	</section>
	<footer>
		<%@ include file="../base/footer.jsp"%>
		<script src="../js/foundation.min.js"></script>
	</footer>
</body>
</html>