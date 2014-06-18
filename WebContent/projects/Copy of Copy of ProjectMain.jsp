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
<script src="../js/vendor/modernizr.js"></script>
<!-- Side Menu Script Start-->
<link rel="stylesheet" href="../css/sidemenu/layout.css" media="screen" />
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../js/sidemenu/hideshow.js"></script>
<script src="../js/sidemenu/jquery.tablesorter.min.js"></script>
<script src="../js/sidemenu/jquery.equalHeight.js"></script>
<!-- Side Menu Script Start -->

<!-- Gantt Start -->
<link rel="stylesheet" type="text/css"
	href="/css/gantt/jquery-ui-1.8.4.css" />
<link rel="stylesheet" type="text/css" href="/css/gantt/reset.css" />
<link rel="stylesheet" type="text/css"
	href="/css/gantt/jquery.ganttView.css" />
<!-- Gantt End -->
<style type="text/css">
#sidebar {
	float: left;
	min-height: 700px;
}

footer {
	clear: both;
}
</style>
<script>
	$.ajax({
		type:"GET",
		url:"Test1.jsp",
		success: callBack
	});	
	function callBack(result) {
		
		$("#main-body").html(result);
	}
</script>
</head>
<body>
	<%@ include file="../base/header2.jsp"%>
	
	<div>
		<input type="text" style="width:100px;"/>	
	</div>
	
	<%@ include file="../base/footer.jsp"%>
	<script src="../js/foundation.min.js"></script>
	
</body>
</html>