<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div>
	<h3>확인란</h3>
		<form method="GET" action="/Test.do">	
			<input type="text" value="입력하세요!!" style="width:100px; display: inline;"/>		
			<input id="sel1"type="button" value=" 2번 적용" onclick="sel()"/>	
			<input type="button" value=" 텍스트 전송" onclick="trans()"/>
		</form>	
	</div>
	<div id="temp"></div>
    <script>
    	function sel() { 
			$.ajax({
				type:"GET",
				url:"bodyAjax.jsp",		
				success: callBack		
			});	
			function callBack(result) {
				
				$("#temp").html(result);							
			}
    	}
    	function trans() {
			document.forms[0].submit();
		}
	</script>
    
	