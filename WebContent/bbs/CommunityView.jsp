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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<style type="text/css">

	h2 { text-align: center; }
	
	#index {
		width: 1540px;
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
	}
	
	#centerBtnList {
		float: left;
		width: 50px;
		height: 500px;
		margin-top: 50px;
		margin-left: 10px;
		margin-right: 10px;
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
	
	#list { float:left; width:80px; font-size: 12pt; text-align: center; margin-left: 5px; }
	#list:HOVER { background-color:	lightgreen; color: black; }
	
	#recom { float:left; width: 80px; font-size: 12pt; text-align: center; margin-left: 5px; }
	#recom:HOVER { background-color: orange; }
	
	#delete { float:right; width: 80px; font-size: 12pt; text-align: center; margin-right: 5px; }
	#delete:HOVER { background-color: red; }

	#update { float:right; width: 80px; font-size: 12pt; text-align: center; margin-right: 5px; }
	#update:HOVER { background-color: yellow; }
	
	#leftViewBtn { height: 40px; margin-top: 200px; text-align: center; }
	#leftViewBtn:hover { background-color: teal; }
	
	#rightViewBtn { height: 40px; text-align: center; }
	#rightViewBtn:hover { background-color: silver; }
	
	#viewComment {
		height: 330px;
		line-height: 20px;
		padding-top: 1px;
		overflow-y: scroll;
	}
	
	#comment {
		width: 680px;
		height: 70px;
		margin: 0 auto;
	}
	
	#commentInsert {
		float: right; width: 80px; font-size: 12pt; 
		text-align: center; margin-right: 10px;
	}
	#commentInsert:HOVER { background-color: lightgreen; }
	
</style>
<script type="text/javascript">
		
	$(document).ready(function(){
		var i = 2;
		
		$("#leftViewBtn").click(function(){
			if(i==2) {
				$("#index").css("width", "810px");
				$("#rightView").css("display", "none");
				--i;
			} else if(i==3) {
				$("#index").css("width", "1540px");
				$("#rightView").css("display", "");
				$("#leftView").css("display", "");
				--i;
			}
		});
		
		$("#rightViewBtn").click(function(){
			if(i==1){
				$("#index").css("width", "1540px");
				$("#leftView").css("display", "");
				$("#rightView").css("display", "");
				++i;
			} else if(i==2){
				$("#index").css("width", "810px");
				$("#leftView").css("display", "none");
				++i;
			}
		});
		
		$("#commentInsert").click(function(){
			alert("댓글을 삽입합니다.");
		});
		
	});
		
</script>
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
			
			웹 프로그래밍 - Ronaldo - 2014-06-02
			
			<hr />
			
			<div id="viewTxt">
				개발 경력 3년 이상의 프로그래머를 모십니다. <br />
				사람이 재산입니다. 최고로 모시겠습니다. <br />
			</div>
			
			<hr style="margin-bottom: 6px;"/>
			
			<input type="text" id="list" readonly="readonly" placeholder="목록보기"/>
			<input type="text" id="recom" readonly="readonly" placeholder="추천하기"/>
			<input type="text" id="update" readonly="readonly" placeholder="수정하기"/>
			<input type="text" id="delete" readonly="readonly" placeholder="삭제하기"/>
	
		</div>
		
		<div id="centerBtnList">
			<input type="text" id="leftViewBtn" readonly="readonly" placeholder="<<"/>
			<input type="text" id="rightViewBtn" readonly="readonly" placeholder=">>"/>
		</div>

		<div id="rightView">
			<br />
			
			<h4>댓  글</h4>
			
			<hr />
			
			<div id="viewComment">
				
				<div id="commentBody">
					rockerroom - 2014/07/05 - x<br><br />
					프로젝트 2년차인데 프로젝트에 관해서 궁금합니다.
					<hr />
				</div>
				<div>
					rockerroom - 2014/07/05 - x<br><br />
					프로젝트 2년차인데 프로젝트에 관해서 궁금합니다.
					<hr />
				</div>
				<div>
					rockerroom - 2014/07/05 - x<br><br />
					프로젝트 2년차인데 프로젝트에 관해서 궁금합니다.
					<hr />
				</div>
				<div>
					rockerroom - 2014/07/05 - x<br><br />
					프로젝트 2년차인데 프로젝트에 관해서 궁금합니다.
					<hr />
				</div>
				<div>
					rockerroom - 2014/07/05 - x<br><br />
					프로젝트 2년차인데 프로젝트에 관해서 궁금합니다.
					<hr />
				</div>
				
			</div>
			
			<hr />
			
			<textarea id="comment" cols="30" rows="10" placeholder=" 명예훼손, 개인정보 유출, 분쟁 유발, 허위사실 유포등의 글은 이용 약관에 의해 제재는 물론 법률에 의해 처벌받을 수 있습니다. 건전한 커뮤니티를 위해 삼가주시기 바랍니다."></textarea>
			
			<br />	
			
			<input type="text" id="commentInsert" readonly="readonly" placeholder="댓글입력"/>
			
		</div>
	</div>
	
	<div style="clear: both;"></div>
	
	<br />
	
	<hr />
	
	<br />
	
	<%@ include file="/base/footer.jsp" %>
	
	<script src="/js/foundation.min.js"></script>
</body>
</html>