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
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script type="text/javascript">
	function mypj() {
		var temp = jQuery("#mypj");
		temp.toggle();
	}
	
	function mail() {
		/* jQuery("#test").text("TEST"); */
		var temp = jQuery("#mail_pop");
		temp.toggle();
		
		if (temp.css("display") == "none") {
			jQuery("#maicon").attr("src", "images/mail.png");	
		} else if (temp.css("display") == "block") {
			jQuery("#maicon").attr("src", "images/mail_sel.png");	
		}
	}
	
	function memo() {
		var temp = jQuery("#memo_pop");
		temp.toggle();
		
		if (temp.css("display") == "none") {
			jQuery("#meicon").attr("src", "images/memo.png");	
		} else if (temp.css("display") == "block") {
			jQuery("#meicon").attr("src", "images/memo_sel.png");	
		}
		
	}	
	
	function noti() {
		var temp = jQuery("#noti_pop");
		temp.toggle();
		
		if (temp.css("display") == "none") {
			jQuery("#nicon").attr("src", "images/noti.png");	
		} else if (temp.css("display") == "block") {
			jQuery("#nicon").attr("src", "images/noti_sel.png");	
		}
	}	
	
	function man() {
		var temp = jQuery("#man_pop");
		temp.toggle();
		
		if (temp.css("display") == "none") {
			jQuery("#manicon").attr("src", "images/man.png");
			jQuery("#user > a").css("color","#FFFFFF");
		} else if (temp.css("display") == "block") {
			jQuery("#manicon").attr("src", "images/man_sel.png");
			jQuery("#user > a").css("color","#00BAFF");
		}
	}	
</script>
</body>
</html>