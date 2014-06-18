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
<style type="text/css">
	#teamboard {
		border: 1px solid black;
		border-collapse:  collapse;
		margin-top: 20px auto;
		}
	
	#teamboard tr, th, td {
		border: 1px solid black;
	}
	
	#search{
		width:150px;
		float: right;
		margin-bottom: 0px; margin-right: 10px;
		height: 27px;
	}
	
	#search1{
		width: 85px;
		height: 27px;
		float: right;
		margin-bottom: 0px;
		margin-right: 10px;
		padding: 0px;		
		
	}
		
</style>
<script src="/js/vendor/modernizr.js"></script>
</head>
<body>
	
	<%@ include file="/base/header2.jsp" %>
	<div style="width: 600px; margin: 20px auto;">
		<
		<table id="teamboard" style="width:600px;">
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>등록일</th>
				<th>글쓴이</th>
			</tr>	
			<tr>
				<td>1</td>
				<td>나는 즐라탄이다</td>
				<td>2014-16-15</td>
				<td>즐라탄</td>
			</tr>
		</table>
	</div>
	<div style="width: 600px; margin: 0px auto;">
		<input type="button" value="글쓰기" href="#" />
		<input type="submit" value="검색" style="float: right" />
		<input type="text" id="search" name="search"/>
		<select id="search1" name="searcha1" >
			<option>제  목</option>
			<option>이  름</option>
			<option>내  용</option>
			<option>제목+내용 </option>
		</select>
	</div>
	
	<%@ include file="/base/footer.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>