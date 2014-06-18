<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Timple</title>
<link rel="stylesheet" href="/css/timple.css" />
<link rel="stylesheet" href="/css/common.css" />
<script src="/js/vendor/modernizr.js"></script>
<!-- Side Menu Script Start-->
<link rel="stylesheet" href="/css/sidemenu/layout.css" type="text/css"
	media="screen" />
<script src="/js/sidemenu/jquery-1.5.2.min.js" type="text/javascript"></script>
<script src="/js/sidemenu/hideshow.js" type="text/javascript"></script>
<script src="/js/sidemenu/jquery.tablesorter.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="/js/sidemenu/jquery.equalHeight.js"></script>
<!-- Side Menu Script Start -->

<!-- Gantt Start -->
<link rel="stylesheet" href="/css/gantt/style.css" />
<link rel="stylesheet"
	href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="http://taitems.github.com/UX-Lab/core/css/prettify.css" />
<!-- Gantt End -->
<style type="text/css">
#sidebar {
	float: left;
	min-height: 700px;
}

#content {
	float: left;
	width: 972px;
	min-height: 820px;
	border: 1px solid red;
}

footer {
	clear: both;
}
</style>
</head>
<body>
	<%@ include file="/base/header2.jsp"%>
	<!-- Side Menu Start -->
	<aside id="sidebar" class="column"
		style="margin-top: 0px; min-height: 820px;">
		<div class="user">
			<p>
				John Doe (<a href="#">3 Messages</a>)
			</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>

		<h3>Content</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="#">New Article</a></li>
			<li class="icn_edit_article"><a href="#">Edit Articles</a></li>
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
	<!-- Side Menu End -->
	<section>
		<div id="content">
			<div class="gantt"></div>
		</div>
	</section>
	<footer>
		<%@ include file="/base/footer.jsp"%>
		<script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="/js/foundation.min.js"></script>
	</footer>
</body>
<!-- Gantt Start -->
<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script src="/js/gantt/jquery.fn.gantt.js"></script>
<script
	src="http://twitter.github.com/bootstrap/assets/js/bootstrap-tooltip.js"></script>
<script
	src="http://twitter.github.com/bootstrap/assets/js/bootstrap-popover.js"></script>
<script src="http://taitems.github.com/UX-Lab/core/js/prettify.js"></script>
<script>
	$(function() {

		"use strict";

		$(".gantt").gantt({
			source : [ {
				name : "Sprint 0",
				desc : "Analysis",
				values : [ {
					from : "/Date(1320192000000)/",
					to : "/Date(1322401600000)/",
					label : "Requirement Gathering",
					customClass : "ganttRed"
				} ]
			}, {
				name : " ",
				desc : "Scoping",
				values : [ {
					from : "/Date(1322611200000)/",
					to : "/Date(1323302400000)/",
					label : "Scoping",
					customClass : "ganttRed"
				} ]
			}, {
				name : "Sprint 1",
				desc : "Development",
				values : [ {
					from : "/Date(1323802400000)/",
					to : "/Date(1325685200000)/",
					label : "Development",
					customClass : "ganttGreen"
				} ]
			}, {
				name : " ",
				desc : "Showcasing",
				values : [ {
					from : "/Date(1325685200000)/",
					to : "/Date(1325695200000)/",
					label : "Showcasing",
					customClass : "ganttBlue"
				} ]
			}, {
				name : "Sprint 2",
				desc : "Development",
				values : [ {
					from : "/Date(1326785200000)/",
					to : "/Date(1325785200000)/",
					label : "Development",
					customClass : "ganttGreen"
				} ]
			}, {
				name : " ",
				desc : "Showcasing",
				values : [ {
					from : "/Date(1328785200000)/",
					to : "/Date(1328905200000)/",
					label : "Showcasing",
					customClass : "ganttBlue"
				} ]
			}, {
				name : "Release Stage",
				desc : "Training",
				values : [ {
					from : "/Date(1330011200000)/",
					to : "/Date(1336611200000)/",
					label : "Training",
					customClass : "ganttOrange"
				} ]
			}, {
				name : " ",
				desc : "Deployment",
				values : [ {
					from : "/Date(1336611200000)/",
					to : "/Date(1338711200000)/",
					label : "Deployment",
					customClass : "ganttOrange"
				} ]
			}, {
				name : " ",
				desc : "Warranty Period",
				values : [ {
					from : "/Date(1336611200000)/",
					to : "/Date(1349711200000)/",
					label : "Warranty Period",
					customClass : "ganttOrange"
				} ]
			} ],
			navigate : "scroll",
			scale : "weeks",
			maxScale : "months",
			minScale : "days",
			itemsPerPage : 10,
			onItemClick : function(data) {
				alert("Item clicked - show some details");
			},
			onAddClick : function(dt, rowId) {
				alert("Empty space clicked - add an item!");
			},
			onRender : function() {
				if (window.console && typeof console.log === "function") {
					console.log("chart rendered");
				}
			}
		});

		$(".gantt").popover({
			selector : ".bar",
			title : "I'm a popover",
			content : "And I'm the content of said popover.",
			trigger : "hover"
		});

		prettyPrint();

	});
</script>
<!-- Gantt End -->
</html>