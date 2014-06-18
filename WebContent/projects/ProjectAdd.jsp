<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Timple</title>
<link rel="stylesheet" href="/css/timple.css" />
<link rel="stylesheet" href="/css/common.css" />
<script src="/js/vendor/modernizr.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/pepper-grinder/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true
		});
		$("#datepicker2").datepicker({
			changeMonth : true,
			changeYear : true
		});
	});
</script>
<style>
	section{
		min-height: 700px;
	}
	#submit{
		margin-left: 1030px;
	}
	h1{ text-align: center; margin: 10px;}
</style>
</head>
<body>
	<header>
		<%@ include file="/base/header2.jsp"%>
	</header>
	<section>
		<h1>프로젝트 등록</h1>
		<form>
			<div class="row">
				<div class="large-12 columns">
					<label>프로젝트 명<input type="text"
						placeholder="프로젝트 명은 최대 100자까지 입력 가능합니다." />
					</label>
				</div>
			</div>
			<div class="row">
				<div class="large-4 columns">
					<label>팀장<input type="text" readonly="readonly" value="이진호"/>
					</label>
				</div>
				<div class="large-4 columns">
					<label>Start Date <input type="text"
						placeholder="MM/DD/YY" id="datepicker" readonly="readonly"/>
					</label>
				</div>
				<div class="large-4 columns">
					<label>End Date <input type="text"
						placeholder="MM/DD/YY" id="datepicker2" readonly="readonly"/>
					</label>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>1차 직군<select>
							<option value="husker">Husker</option>
							<option value="starbuck">Starbuck</option>
							<option value="hotdog">Hot Dog</option>
							<option value="apollo">Apollo</option>
					</select>
					</label>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>2차 직군<select>
							<option value="husker">Husker</option>
							<option value="starbuck">Starbuck</option>
							<option value="hotdog">Hot Dog</option>
							<option value="apollo">Apollo</option>
					</select>
					</label>
				</div>
			</div>
			<div class="row">
				<div class="large-6 columns">
					<label>알림</label> <input type="radio" name="pokemon" value="Red"
						id="pokemonRed" checked="checked"><label for="pokemonRed">사용</label> <input
						type="radio" name="pokemon" value="Blue" id="pokemonBlue"><label
						for="pokemonBlue">사용안함</label>
				</div>
				<div class="large-6 columns">
					<label>공개 여부</label> <input id="checkbox1" type="checkbox" checked="checked"><label
						for="checkbox1">공개</label> <input id="checkbox2"
						type="checkbox" ><label for="checkbox2">비공개</label>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>내용<textarea placeholder="최대 1000자까지 입력가능"  style="min-height: 300px;"></textarea>
					</label>
				</div>
			</div>
			<input type="submit" value=" 생성하기 " id="submit"/>
		</form>
	</section>

	<footer>

		<%@ include file="/base/footer.jsp"%>
		<!-- <script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
		<script src="/js/foundation.min.js"></script>

	</footer>

</body>
</html>