<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    	function change() {
    		$("#num").css("color","red");	
    	}    
    </script>
    <div id="num">2번입니다.</div>
    <input type="button" value=" 색상 변경 " onclick="change();"/>
<!-- <script type="text/javascript">
	alert("2번 확인");
</script> -->
   <%--  <% String name  = request.getParameter("name"); %>
	<%= name %> --%>