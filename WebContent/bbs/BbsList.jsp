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
	
	#tblBoard {
		border-collapse: collapse;
		border: 1px solid gray;
		width: 1000px;
		margin: 0 auto;			
	}
	
	#tblBoard th, #tblBoard td {
		border: 1px solid red;
		padding: 3px;
	}
	
	#tblBoard th { border-bottom: 5px solid gray; }
	#tblBoard td { 
		text-align: center; 
		font-size: 12pt;
	}
	
	#tblBoard th:nth-child(1) { width: 80px; }
	#tblBoard th:nth-child(2) { width: 50px; }
	#tblBoard th:nth-child(3) { width: 520px; }
	#tblBoard th:nth-child(4) { width: 100px; }
	#tblBoard th:nth-child(5) { width: 100px; }
	#tblBoard th:nth-child(6) { width: 40px; }
	#tblBoard th:nth-child(7) { width: 40px; }
	
	#tblBoard td:nth-child(2) { font-size: 10pt; }
	#tblBoard td:nth-child(5) { font-size: 10pt; }
	#tblBoard td:nth-child(6) { font-size: 10pt; }
	#tblBoard td:nth-child(7) { font-size: 10pt; }
	
	#btnList {
		width: 1000px;
		height: 30px;
		margin: 0 auto;
		text-align: center;
	}
	
	#termSel, #kindSel {
		display: inline-block;
		padding: 1px;
		padding-left: 3px;
		margin-right: 5px;
		width: 90px;
		height: 30px;
		text-align: center;
	}
	
	#txtSearch {
		display: inline-block;
		width: 600px;
		height: 30px;
	}
	
	#searchBtn { width: 80px; margin-left: 5px;}
	
	#kindSel:active { background-color: lightblue; }
	#termSel:active { background-color: lightblue; }
	#txtSearch:active { background-color: lightblue; }
	#searchBtn:active { background-color: lightblue; }
		
	/* 페이징 처리 CSS */
	#pageList { width: 500px; margin: 0 auto; text-align: center; }
	
}
	
</style>	
</head>
<body>
	<%@ include file="/base/header2.jsp" %> <br />
	
	<h2>Community</h2>
	
	<hr /> <br />
	
	<table id="tblBoard">
		<tr>
			<th>종류</th>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
			<th>추천</th>
		</tr>
		<!-- 공지사항 3개 가져오기 -->
		<c:forEach items="${list1}" var="dto1">
		<tr>
			<td>${dto1.rowNum}</td>
			<td>${dto1.boardId}</td>
			<td>${dto1.subject}</td>
			<td>${dto1.name}</td>
			<td>${dto1.regDate}</td>
			<td>${dto1.readCount}</td>
			<td>${dto1.recomCount}</td>
		</tr>
		</c:forEach>
		<!-- 추천글 3개 가져오기 -->
		<c:forEach items="${list2}" var="dto2">
		<tr>
			<%-- <td>${dto2.post_type}</td>
			<td>${dto2.boardId}</td>
			<td>${dto2.subject}</td>
			<td>${dto2.name}</td>
			<td>${dto2.regDate}</td>
			<td>${dto2.readCount}</td>
			<td>${dto2.recomCount}</td> --%>
		</tr>
		</c:forEach>
		<!-- 게시물 10개 가져오기 -->
		<%-- <c:forEach items="${list3}" var="dto3">
		<tr>
			<td>${dto3.post_type}</td>
			<td>${dto3.boardId}</td>
			<td>${dto3.subject}</td>
			<td>${dto3.name}</td>
			<td>${dto3.regDate}</td>
			<td>${dto3.readCount}</td>
			<td>${dto3.recomCount}</td>
		</tr>
		</c:forEach> --%>
	</table> <br />
	
	<!-- 페이징 버튼 위치 -->
	<div id="pageList">
		<a href="#"><<  이전</a>&nbsp;
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>&nbsp;
		<a href="#">다음  >></a>
	</div>
	
	<!-- 검색 버튼 위치 -->
	
	<hr />
	
	<div id="btnList">
		<input type="text" list="list" id="termSel" placeholder="기간 선택"/>
		<datalist id="list">
			<option value="전체기간"></option>
			<option value="아무게"></option>
			<option value="하하하"></option>
			<option value="호호호"></option>
		</datalist>
		
		<input type="text" list="list2" id="kindSel" placeholder="내용 선택"/>
		<datalist id="list2">
			<option value="제목+내용"></option>
			<option value="제  목"></option>
			<option value="내  용"></option>
		</datalist>
			
		<input type="text" name="txtSearch" id="txtSearch" placeholder="이곳에 검색어를 입력하세요." />
		
		<input type="button" id="searchBtn" value="검 색" />
	</div>
	
	<br />
	
	<%@ include file="/base/footer.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>





















