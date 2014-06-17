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
<script src="/js/sidemenu/jquery.tablesorter.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/sidemenu/jquery.equalHeight.js"></script>

<!-- Side Menu Script Start -->

<style type="text/css">
aside{ float: left; }
section{ float: right; min-height: 700px; margin: 0px; }
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<!-- Head Main Menu Start -->
	<header>
		<%@ include file="/base/header2.jsp"%>
	</header>
	<!-- Head Main Menu End -->

	

	<!-- Side Menu Start -->
	<aside id="sidebar" class="column" style="margin-top: 0px;">
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
	
	<!-- Contents Start -->
	<section style="width: 650px; margin: 0px;">
		
	</section>
	<!-- Contents End -->
		
	<!-- Footer Start -->
	<footer>
		<%@ include file="/base/footer.jsp"%>
	</footer>
	<!-- Footer End -->
	<!-- <script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script> -->
</body>
</html>