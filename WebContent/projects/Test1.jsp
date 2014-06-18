<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div>
	<h3>확인란</h3>		
		<input type="text" value="입력하세요!!" style="width:100px; display: inline;"/>
		<input type="submit" />
		<input id="sel1"type="button" value=" 2번 적용" onclick="sel()"/>	
	</div>
	<div id="temp"></div>
    <script>
    	function sel() { 
			$.ajax({
				type:"GET",
				url:"Test2.jsp",		
				success: callBack		
			});	
			function callBack(result) {
				/* alert("1번 ok"); */
				$("#temp").html(result);
				$("#sel1").empty();				
			}
    	}
	</script>
    
	