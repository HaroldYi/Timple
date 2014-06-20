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
<link rel="stylesheet" href="/css/header.css" />
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
	border-left: 1px solid #333;
	/* border: 1px solid red; */
}

#progress { /* border: 1px solid blue; */
	margin: 10px;
	margin-top: 40px;
}

#progress>h4 {
	margin-left: 73px;
}

#box1 {
	border: 1px solid #333;
	width: 800px;
	height: 30px;
	margin: 5px auto;
	border-radius: 50px;
}

#ing {
	z-index: 10;
	width:0px;
	height: 28px;
	border-right: 1px solid #333;
	background-color: yellow;
	border-radius: 50px;
}

#overview {
	/* border: 1px solid blue; */
	width: 800px;
	height: 350px;
	margin: 20px auto;
	margin-top: 50px;
}

.viewcontents {
	height: 40px;
	border-bottom: 1px solid gray;
	padding-top: 10px;
	padding-bottom: 10px;
}

.viewTitle {
	float: left;
}

.viewUser, .viewDate {
	float: right;
}

.file{ background-color: #86d8dc;}
.task{ background-color: #f59994;}
.tasklist{ background-color: #89c2f4;}
.project{ background-color: #73d7a1;}
.file, .task, .tasklist, .project{ width: 70px; float: left;}

#today{
	margin: 0px auto;
	width: 800px;
	height: 200px;
	margin-top: 40px;
}

/* #todo {
	border: 1px solid green;
	width: 800px;
	height: 200px;
	margin: 20px auto;
} */

#todo>p {
	margin-bottom: 0px;
}

#todo>hr {
	margin-top: 5px;
	margin-bottom: 5px;
}

/* Side Bar CSS Start */
.pPlan {
	border: 1px solid #333;
	margin: 5px;
	width: 150px;
	text-align: center;
}

.pPlan>#p1 {
	width: 50%;
	background-color: red;
}

.pPlan>#p2 {
	width: 30%;
	background-color: yellow;
}

#sidebar h3>a:hover {
	text-decoration: none;
}

#sidebar h3>a {
	color: #1F1F20;
}

/* Side Bar CSS End */

footer {
	clear: both;
}
</style>

<script>
	$(document).ready(function(){
		var total = 50;
		var request = 80;
		var design = 50;
		
		$("#ing").animate({
			width: total + "%"
		}, 1000);
		
		$("#request").animate({
			width: request + "%"
		}, 1000);
		
		$("#design").animate({
			width: design + "%"
		}, 1000);
	});
</script>
</head>
<body>
	<%@ include file="../base/header.jsp"%>
	<div id="title">
		<p>ElepamT 프로젝트</p>
	</div>
	<!-- Side Menu Start -->
	<aside id="sidebar" class="column">
		<h3>Project Plan</h3>
		<ul class="toggle">
			<li class="icn_new_article"><div class="pPlan">
					요구사항<div id="request"></div></div></li>
			<li class="icn_edit_article"><div class="pPlan">
					DB 설계<div id="design"></div></div></li>
			<li class="icn_categories"></li>
			<li class="icn_tags"></li>
		</ul>
		<h3>게시판</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="#">자유게시판</a></li>
			<li class="icn_view_users"><a href="#">업무게시판</a></li>
			<li class="icn_profile"><a href="#">익명게시판</a></li>
		</ul>
		<h3>
			<a href="#">예산관리</a>
		</h3>

		<h3>
			<a href="#">캘린더</a>
		</h3>

		<h3>
			<a href="#">팀원정보</a>
		</h3>

		<h3>
			<a href="#">자료실</a>
		</h3>

	</aside>
	<!-- Side Menu End -->
	<section>
		<div id="content">
			<div id="progress" class="title">
				<h4>프로젝트 진행률<span>(50%)</span></h4>
				<div id="box1">
					<div id="ing"></div>
				</div>
			</div>

			<div id="today" class="title">
				<h4>오늘의 팀 일정</h4>
				<div id="todo">
					<p>09 : 00 ~ 10 : 00 팀 뷰어를 이용한 회의 시작</p>
					<hr />
					<p>12 : 00 ~ 13 : 00 팀 점심 회식</p>
					<hr />
					<p>12 : 00 ~ 13 : 00 팀 점심 회식</p>
					<hr />
					<p>12 : 00 ~ 13 : 00 팀 점심 회식</p>
					<hr />
					<p>12 : 00 ~ 13 : 00 팀 점심 회식</p>
					<hr />
				</div>
			</div>
			<div id="overview" class="title">
				<h4>OverView</h4>
				<div id="overview2" class="title">
					<div class="viewcontents">
						<div class="label file">File</div>
						<div class="viewTitle">신촌에서 회의하기</div>
						<div class="viewDate">13:05</div>
						<div class="viewUser">by 안상욱</div>
					</div>
					<div class="viewcontents">
						<div class="label task">Task</div>
						<div class="viewTitle">신촌에서 회의하기</div>
						<div class="viewDate">13:05</div>
						<div class="viewUser">by 안상욱</div>
					</div>
					<div class="viewcontents">
						<div class="label tasklist">Task List</div>
						<div class="viewTitle">신촌에서 회의하기</div>
						<div class="viewDate">13:05</div>
						<div class="viewUser">by 안상욱</div>
					</div>
					<div class="viewcontents">
						<div class="label project">Project</div>
						<div class="viewTitle">신촌에서 회의하기</div>
						<div class="viewDate">13:05</div>
						<div class="viewUser">by 안상욱</div>
					</div>
					<div class="viewcontents">
						<div class="label file">File</div>
						<div class="viewTitle">신촌에서 회의하기</div>
						<div class="viewDate">13:05</div>
						<div class="viewUser">by 안상욱</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<footer>
		<%@ include file="../base/footer.jsp"%>
		<script src="../js/foundation.min.js"></script>
	</footer>
</body>
</html>