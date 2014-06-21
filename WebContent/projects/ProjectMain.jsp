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
<link rel="stylesheet" href="/css/projectmain.css" />
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
	<%@include file="../base/sidemenu.jsp"%>
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