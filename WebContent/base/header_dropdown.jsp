<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navigation-bar dark">
	<nav class="navigation-bar-content">

		<a class="element" href="#">TIMPLE <sup>alpha</sup></a> <span
			class="element-divider"></span>
		<c:if test="${session == null }">
			<!-- 로그인 안했을 때 -->
			<div class="element">
				<a class="dropdown-toggle" href="#">기능 소개</a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<a class="element" href="#">서비스 가격</a>
			<a class="element place-right" href="#">Sign Up</a>
			<a class="element place-right" href="#">Sign In</a>
			<a class="element place-right" href="#">프로젝트 둘러보기</a>
		</c:if>
		<c:if test="${session != null }">
			<a class="element" href="#">프로젝트 등록</a>
			<a class="element" href="#">커뮤니티</a>

			<div class="element place-right">
				<a class="dropdown-toggle" href="#">${name }</a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<div class="element place-right">
				<a class="dropdown-toggle" href="#"><img alt="알림" src="" ></a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<div class="element place-right">
				<a class="dropdown-toggle" href="#"><img alt="알림" src="" ></a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<div class="element place-right">
				<a class="dropdown-toggle" href="#"><img alt="메모" src="" ></a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<div class="element place-right">
				<a class="dropdown-toggle" href="#"><img alt="쪽지" src="" ></a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
			<div class="element place-right">
				<a class="dropdown-toggle" href="#">나의 프로젝트</a>
				<ul class="dropdown-menu dark" data-role="dropdown">
					<li><a href="#">Main</a></li>
					<li><a href="#">File Open</a></li>
					<li class="divider"></li>
					<li><a href="#">Print...</a></li>
					<li class="divider"></li>
					<li><a href="#">Exit</a></li>
				</ul>
			</div>
		</c:if>
	</nav>
</nav>