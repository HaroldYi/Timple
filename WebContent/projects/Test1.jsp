<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- <script>
	$.ajax({
		type:"GET",
		url:"Test2.jsp",
		data: {
			name: '홍길동',
			tel: '010-3423-1234',
			addr: '서울시 용산구'			
		},
		success: callBack		
	});	
	function callBack(result) {
		alert("1번 ok");
		$("#temp").html(result);
	}
	
	</script> -->
    <div>
	<h3>확인란</h3>
	
		<div id="temp"></div>
		<input type="text" value="입력하세요!!" style="width:100px; display: inline;"/>
		<input type="submit" />
	
	</div>
	