<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 상세 내용</title>
<link rel="stylesheet" href="../css/timple.css" />
<link rel="stylesheet" href="../css/common.css" />
<script src="../js/vendor/modernizr.js"></script>





<style type="text/css">



div#section {

	min-height: 800px;
	margin-left: -20px;
		
}


img{

width: 339px;
height: 317px;


}



#header{


height: 100px;
text-align:center;
margin-top: 40px;
font-size: 22px;

}


#content{


margin-left: 163px;
height: 370px;
width: 980px;
padding: 20px;


}

#detail{

margin-top: 20px;
width: 742px;
margin-left: 282px;
height: 370px;
opacity: 0.8;
margin-bottom: 30px;
border: 1px solid gray;
padding: 50px;
letter-spacing: 2px;
word-spacing: 3px;


}


#article{


border: 1px solid gray;
width: 342px;
height: 320px;
margin-left: 500px;
margin-top: -320px;
background-color: white;
padding: 20px;



}


#img{

border: 1px solid gray;
width: 342px;
height: 322px;
margin-left: 100px;


}


#startday ,#projectName, #teamCount, #send{
margin: 30px;
font-weight: bold;





}


#send{

border: 1px solid gray;
width: 150px;
height: 40px;
box-shadow: 3px 7px 4px rgba(83, 83, 93, 0.28);
background-color: white;

}



.popupMemo{

display: none; 
position: fixed; 
margin: 170px 0 0 -335px;
padding: 30px;
width: 430px; height: 300px;
top: 150px; left: 50%;
border-radius: 8px; 
z-index: 1;
background-color: lightgray;
opacity: 0.7;


}





</style>




<script type="text/javascript">	

function popup() {
	
	
	$(".popupMemo").show();
	
	
}


</script>

</head>





<body>

<%@ include file="/base/header2.jsp"%>



<div class="popupMemo">

<a class="popup-close" href="#">
		<img src="images/popup_close.png" />
</a>


</div>


	
	
	
	
		
		







<div id="section" >







<div id="header">


Building Design project          


</div>







<div id="content">


<div id="img"><img src="/images/01.jpg" /></div>


<div id="article">

<div id="startday">시작일     : 2014-06-04</div>


<div id="projectName">프로젝트 팀장: king wang jjang</div>


<div id="teamCount">팀원수: 7명</div>


<input type="button" id="send" name="send"  value="쪽지 보내기"   onclick= "popup()"      />


</div>











</div>



<div id="detail">


<p>안녕하세요 building design project를 진행 중인 팀장 king wong jjang 입니다. 
저희는 신축 할 빌딩의 설계 프로젝트를 진행 중이며 1명의 열정적이신 설계자분을
구하고 있습니다. 자세한 문의는 저에게 쪽지로 연락주시면 감사하겠습니다. 
보수는 섭섭치 않게 드릴 예정입니다. 많은 관심 부탁드립니다.</p>


</div>














</div>






<%@ include file="/base/footer.jsp"%>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../js/foundation.min.js"></script>


</body>





</html>