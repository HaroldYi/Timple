<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 목록</title>
<link rel="stylesheet" href="../css/timple.css" />
<link rel="stylesheet" href="../css/common.css" />
<script src="../js/vendor/modernizr.js"></script>



<style type="text/css">
div#section {
	min-height: 800px;
	margin-left: -20px;
}

.small-block-grid-3 {
	margin-top: 35px;
	margin-left: 205px;
}

img {
	width: 220px;
	height: 200px;
}

#subject {
	margin-left: 50%;
	margin-top: 20px;
	border: 1px solid black;
	width: 160px;
	text-align: center;
	font-size: 16px;
	padding: 5px;
	font-weight: bold;
	background-color: lightgray;
}

#ing {
	margin-top: 10px;
	margin-bottom: 10px;
}

#recruit {
	margin-top: 10px;
	margin-bottom: 10px;
}

#search {
	width: 150px;
	margin-left: 924px;
	margin-top: 30px;
}

</style>



</head>

<body>


	<%@ include file="/base/header2.jsp"%>
	<div></div>

	<div id="section">





		<div id="ing">

			<div id="subject">진행 중인 프로젝트</div>
			<input type="text" name="search" id="search" placeholder="프로젝트 검색" />



			<ul class="small-block-grid-3">


				<li><img src="/images/01.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>



				<li><img src="/images/02.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>



				<li><img src="/images/03.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>

			</ul>

		</div>







		<div id="recruit">

			<div id="subject">충원 중인 프로젝트</div>

			<ul class="small-block-grid-3">


				<li><img src="/images/04.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">팀장: johnson</div>
					<div id="stratday">시작일: 2014-06-01</div>
					<div id="collection">모집인원: 1명</div></li>



				<li><img src="/images/05.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>



				<li><img src="/images/06.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>





				<li><img src="/images/07.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>



				<li><img src="/images/08.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>



				<li><img src="/images/09.jpg" />
					<div id="name">webprograming</div>
					<div id="leader">TeamLeader: johnson</div>
					<div id="stratday">Start: 2014-06-01</div></li>







			</ul>

		</div>






	</div>


	<%@ include file="/base/footer.jsp"%>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="../js/foundation.min.js"></script>
</body>
</html>