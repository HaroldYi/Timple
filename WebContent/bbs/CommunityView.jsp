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
<script src="/js/vendor/modernizr.js"></script>
<style type="text/css">

	h2 { text-align: center; }
	
	#index {
		width: 1500px;
		height: 650px;
		margin: 0 auto;
		padding-top: 25px;
		background-color: lightblue;
		text-align: center;
	}
	
	#leftView {
		float: left;
		border: 1px solid lightgreen;
		background-color: white;
		width: 700px;
		height: 600px;
		margin-left: 35px;
		margin-right: 30px;
	}
	
	#rightView {
		float: left;
		border: 1px solid lightgreen;
		background-color: white;
		width: 700px;
		height: 600px;
	}
	
	#viewTxt {
		height: 380px;
		line-height: 20px;
		padding-top: 1px;
		overflow-y: scroll;
	}
	
	#list { width: 80px; font-size: 12pt; text-align: center; margin-left: 5px; }
	#list:HOVER { background-color: lightgreen; }
	
</style>
</head>
<body>
	<%@ include file="/base/header2.jsp" %> <br />
	
	<h2>Community</h2>

	<hr /> <br />
	
	<div id="index">
		<div id="leftView">
			<br />
			<h4> 프로젝트 경력 3년 이상 프로그래머 구합니다.</h4>
			<hr />
			
			Ronaldo - 2014-06-02
			
			<hr />
			
			<div style="clear: both;"></div>
			
			<div id="viewTxt">
				개발 경력 3년 이상의 프로그래머를 모십니다. <br />
				사람이 재산입니다. 최고로 모시겠습니다. <br />
			</div>
			
			<hr style="margin-bottom: 6px;"/>
			
			<input type="text" id="list" readonly="readonly" placeholder="목록보기"/>
			
		</div>

		<div id="rightView">
		
		</div>
	</div>
	
	<div style="clear: both;"></div>
	
	<br />
	
	<hr />
	
	<br />
	
	
	<%@ include file="/base/footer.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>