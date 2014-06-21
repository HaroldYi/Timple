<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="top-bar" data-topbar >
	<ul class="title-area">
		<li class="name">
			<h1>
				<a href="/">TIMPLE<sup>𝞪</sup></a>
			</h1>
		</li>
	</ul>

	<section class="top-bar-section" >
		<!-- Left Nav Section -->
		<ul class="left">
			<li><a href="#">프로젝트 등록</a></li>
			<li><a href="#">커뮤니티</a></li>
		</ul>
		<!-- Right Nav Section -->
		<ul class="right">
			<li id = "mp">
				<a href="#" id="mpic">나의 프로젝트</a>
				<c:if test="${project == null }">
				<div class="pop" id="mypj">
					<%-- <c:forEach items="${project != null}"> --%>
						<div style="width: 50px; float: left;"><img id="pj" src="/Timple/thumnail/${thumnail }.jpg" width="50px" height="50px"/></div>
						<div>
							<div>테슫흥</div>
							<div>테슫흥</div>
						</div>	
					<%-- </c:forEach> --%>
					</div>
				</c:if>
			</li>
			<li>
				<a href="#" id = "ma"><img id = "maicon" src="/images/mail.png" class="hicon" /></a>
				<c:if test="${mail == null }">
				<div id="mail_pop" class="pop">	
					<%-- <c:forEach items="${mail }" var="mail"> --%>
					<div class="box">1</div>
					<%-- </c:forEach> --%>
				</div>
				</c:if>
			</li>
			<li>
				<a href="#" id="me"><img id = "meicon" src="/images/memo.png" class="hicon" /></a>
				<c:if test="${memo == null }">
				<div id="memo_pop" class="pop">
					<%-- <c:forEach items="${memo }" var="mail"> --%>
					<div class="box">1</div>
					<%-- </c:forEach> --%>
				</div>
				</c:if>
			</li>
			<li>
				<a href="#" id="no"><img id = "nicon" src="/images/noti.png" class="hicon" /></a>
				<%-- <c:if test="${noti == null }"> --%>
				<div id="noti_pop" class="pop">
					<%-- <c:forEach items="${noti }" var="mail"> --%>
					<div class="box">1</div>
					<%-- </c:forEach> --%>
				</div>
				<%-- </c:if> --%>
				</li>
			<li id ="user">
				<a href="#" id="us"><img id = "manicon" src="/images/man.png" class="hicon" />&nbsp;&nbsp;&nbsp;안 상욱</a>
				<c:if test="${man == null }">
				<div id="man_pop" class="pop">
					<div id="profile">
						<img src="/Timple/profile/${profile }.jpg" /><br />
						<h3>안 상욱</h3>
					</div>
					<%-- <c:forEach items="${man }" var="mail"> --%>
					<div class="box">
						친구들ㅋ
					</div>
					<div class="box">
						친구들ㅋ
					</div>
					<div class="box">
						친구들ㅋ
					</div>
					<%-- </c:forEach> --%>
					<div>
						<input type="button" value="마이페이지">
						<input type="button" value="로그 아웃">
					</div>
				</div>
				</c:if>
			</li>
		</ul>
	</section>
</nav>