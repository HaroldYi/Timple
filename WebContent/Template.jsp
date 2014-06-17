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
</head>
<body>
	<c:if test="${session != null }">
		<%@ include file="/base/header.jsp"%>
	</c:if>
	<c:if test="${session == null }">
	<%@ include file="/base/header2.jsp"%>
	</c:if>

	<h3>템플릿입니다.</h3>
	9
	<%@ include file="/base/footer.jsp"%>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script type="text/javascript">
	function mail() {
		/* jQuery("#test").text("TEST"); */
		jQuery("#mail_pop").toggle("slow");
	}
	
	function memo() {
		/* jQuery("#test").text("TEST"); */
		jQuery("#memo_pop").toggle("slow");
	}	
	
	function noti() {
		/* jQuery("#test").text("TEST"); */
		jQuery("#noti_pop").toggle("slow");
	}	
	
	function man() {
		/* jQuery("#test").text("TEST"); */
		jQuery("#man_pop").toggle("slow");
	}	
</script>
</body>
</html>