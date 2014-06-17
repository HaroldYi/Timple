<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="top-bar" data-topbar>
	<ul class="title-area">
		<li class="name">
			<h1>
				<a href="./index.jsp">TIMPLE</a>
			</h1>
		</li>
	</ul>

	<section class="top-bar-section">
		
			<!-- Left Nav Section -->
			<ul class="left">
				<li><a href="#">프로젝트 등록</a></li>
				<li><a href="#">커뮤니티</a></li>
			</ul>

			<!-- Right Nav Section -->
			<ul class="right">
				<li><a href="#">나의 프로젝트</a></li>
				<li id="mail" style="position: relative;"><a href="#"
					onclick="mail();"><img src="./images/mail.png" class="hicon" /></a>
				<div id="mail_pop"
						style="display: none; background-color: fff; width: 100px; border: 1px solid black; position: absolute; top: 45">
						<div>1</div>
						<div>1</div>
						<div>1</div>
						<div>1</div>
					</div></li>
				<li onclick="memo();"><a href="#"><img src="./images/memo.png" class="hicon" /></a><div id="memo_pop"
						style="display: none; background-color: fff; width: 100px; border: 1px solid black; position: absolute; top: 45">
						<div>1</div>
						<div>1</div>
						<div>1</div>
						<div>1</div>
					</div></li>
				<li onclick="noti();"><a href="#"><img src="./images/noti.png" class="hicon" /></a><div id="noti_pop"
						style="display: none; background-color: fff; width: 100px; border: 1px solid black; position: absolute; top: 45">
						<div>1</div>
						<div>1</div>
						<div>1</div>
						<div>1</div>
					</div></li>
				<li onclick="man();"><a href="#"><img src="./images/man.png" class="hicon" />${name }</a><div id="man_pop"
						style="display: none; background-color: fff; width: 100px; border: 1px solid black; position: absolute; top: 45">
						<div>1</div>
						<div>1</div>
						<div>1</div>
						<div>1</div>
					</div></li>
			</ul>
	</section>
</nav>