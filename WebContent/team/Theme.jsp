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
			div {
				border: 1px solid gray;
			}
		</style>
	</head>
<body>
	<%@ include file="/base/header2.jsp" %>
	<%@ include file="Setting.jsp" %>
		<div id="theme">
			<div>노란색</div>
			<div>빨강색</div>
			<div>파란색</div>
			<div>녹색</div>
			<div>검정색</div>
		</div>
	
	<%@ include file="/base/footer.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>