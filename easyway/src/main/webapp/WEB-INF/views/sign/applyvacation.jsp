<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>편하게 오피스 작업을! EasyWay!</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sidebars/">


<!-- Bootstrap core CSS -->
<link href="/resources/css/reset.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- css -->
<link href="/resources/css/sign.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

</style>


<!-- Custom styles for this template -->
<link href="/resources/css/sidebars.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../public/sidebar.jsp" />

	<div id="wrap">
		<div class="sign">
			<h4>휴가 신청서</h4>
			<form action="/sign/applyvacation" method="post" accept-charset="utf-8">
				제목 : <input type="text" name="signTitle"><br>
				휴가종류 : <input type="radio" name="signVacationType" id="first" value="연차"><label for="first">연차</label>
						<input type="radio" name="signVacationType" id="second" value="반차"><label for="second">반차</label>
						<input type="radio" name="signVacationType" id="third" value="포상"><label for="third">포상</label>
						<input type="radio" name="signVacationType" id="fourth" value="경조사"><label for="fourth">경조사</label><br>
				휴가 시작일 : <input type="date" name="signVacationStart"><br>
				휴가 종료일 : <input type="date" name="signVacationEnd"><br>
				중요도 : <input type="radio" name="signVacationImportance" id="first" value="상">&nbsp;<label for="first">상</label>
				 <input type="radio" name="signVacationImportance" id="second" value="중">&nbsp;<label for="second">중</label>
				 <input type="radio" name="signVacationImportance" id="third" value="하">&nbsp;<label for="third">하</label><br>
				사유 <br>
				<textarea id="summernote" name="signContent"></textarea>
				<br>
				<!-- 기안 양식번호 --><input type="hidden" value="3" name="signFormId">
				<input type="submit" value="등록">
			</form>
		</div>
	</div>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${path}/js/menu.js"></script>
<script src="./js/sidebars.js"></script>
<!-- summernote -->
<script src="/resources/js/summernote.js"></script>
<script src="/resources/summernote/summernote-lite.js"></script>
<script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summernote/summernote-lite.css">  
</html>