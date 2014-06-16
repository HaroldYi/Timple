<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	function move() {
		window.open('/base/footer_terms.jsp','_blank',"width=500,height=600,scrollbars=yes,menubar=no,location=no,left=300,top=100");
		// 졸림.. 자고 내일 다시
	}
</script>
<div id="footer">
	<div style="display: inline; padding: 0px 40px;"></div>
	<div style="display: inline;"><span class="footer-nav-span">&copy; 2014 Timple. All rights reserved. &nbsp;</span></div>
	<div class="footer-nasv" onclick="move();"><span class="footer-nav-span">&nbsp;이용약관 &nbsp;</span></div>
	<div class="footer-nav" onclick="location.href='#'"><span class="footer-nav-span">&nbsp;개인정보 &nbsp;</span></div>
	<div class="footer-nav" onclick="location.href='#'"><span class="footer-nav-span">&nbsp;보호정책 &nbsp;</span></div>
	<div class="footer-nav" onclick="location.href='#'"><span>&nbsp;고객센터</span></div>
</div>