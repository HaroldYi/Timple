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
<link rel="stylesheet" href="/css/header.css" />
<script src="/js/vendor/modernizr.js"></script>
</head>
<body>
	<c:if test="${session == null }">
		<%@ include file="/base/header.jsp"%>
	</c:if>
	<c:if test="${session != null }">
		<%@ include file="/base/header2.jsp"%>
	</c:if>

	<h3>템플릿입니다.</h3>

	<%@ include file="/base/footer.jsp"%>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script src="/js/header.js"></script>
</body>
</html>