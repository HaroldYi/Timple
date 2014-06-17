<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
	<head>
		<meta charset="UTF-8">
		<title>프로젝트 목록</title>
		<link rel="stylesheet" href="/css/timple.css" />
		<link rel="stylesheet" href="/css/common.css" />
		<script src="/js/vendor/modernizr.js"></script>
		
		
		
		<style type="text/css">
		
		
		section{
		
		min-height: 800px;
		
	    }
		
		
		.small-block-grid-3{
		
		margin-top: 35px;
		margin-left: 205px;
		
		
		}
		
	
		
		
		img{
		
		width: 220px;
		height: 200px;
		
		}
		
		#ing{
		
		
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
	    
		
		</style>
		
		
		
		

	</head>
	
<body>
	<%@ include file="/base/header2.jsp" %>
	
	<div id="subHeader">
	
	<div id="ing" >진행 중인 프로젝트 </div>
	
	
	
	
	</div>
	
	
	<section>
	
  
  <ul class="small-block-grid-3">
  
 
  <li><img src="/images/01.jpg" />
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  </li>
  
  
  
  <li><img src="/images/02.jpg" />
  
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  

  
  </li>
  
  <li><img src="/images/03.jpg" />
  
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  
  </li>
  
  
  <li><img src="/images/04.jpg" />
  
  
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  </li>
  
  <li><img src="/images/05.jpg" />
  
   
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  
  
  </li>
  
  <li><img src="/images/06.jpg" />
  
   
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  
  
  </li>
  
  <li><img src="/images/07.jpg" />
  
  
  
   
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  </li>
  
  
  <li><img src="/images/08.jpg" />
  
  
   
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  
  </li>
  
  
  <li><img src="/images/09.jpg" />
  
  
  <div id="name">webprograming</div>
  <div id="leader">TeamLeader: johnson</div>
  <div id="stratday">Start: 2014-06-01</div>
  <div id="recruit">모집인원: 1명</div>
  
  
  
   </li>
  
  
  
  
  
   </ul>

	
</section>
	
	
	
	<%@ include file="/base/footer.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
</body>
</html>