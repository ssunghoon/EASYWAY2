<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>편하게 오피스 작업을! EasyWay!</title>

	<!--jQuery, Bootstrap, fontawesome 등 참고사항 -->
    <!-- 주의! jQuery가 Bootstrap보다 위에 있어야 합니다.  -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<!-- 위와 버전만 다른가 -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="./resources/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">
	
    <!-- EASYWAY CSS, JS -->
	<link href="./resources/css/reset.css" rel="stylesheet">
	<link href="./resources/css/sidebars.css" rel="stylesheet">
    <link href="./resources/css/common.css" rel="stylesheet">
	<link href="./resources/css/widget.css" rel="stylesheet"/>
    <script src="./resources/js/menu.js"></script>
    <script src="./resources/js/widget.js"></script>

</head>

<body>

	<!-- sidebar ------------------------------------------------------------------------------->
	<jsp:include page="./public/sidebar.jsp" />
    
    <div class= "page-divider">
	    <div class="sidebar-background"></div>
	
	
		<!-- 페이지 표현 부분 -------------------------------------------------------------------------->
		<div class="easyway-wrapper">
			<div class="widget-area">
				<div class="widget-area-message">이 곳에 위젯을 올려주세요</div>
			</div>
			
			<!-- 위젯 감싸는 태그 -->
			<div class="widget-container">
				<!-- 썸네일 컨테이너 (draggable) -->
				<ul class="widget-thumb-container">
				
					<!-- 위젯 썸네일들 -->
					<li class="widget-thumb shadow unselected widget-clock">
						<div class="widget-thumb-label">시계</div>
					</li>
					<li class="widget-thumb shadow unselected widget-notice">
						<div class="widget-thumb-label">공지사항 <br> 목록</div>
					</li>
					<li class="widget-thumb shadow unselected widget-attendance">
						<div class="widget-thumb-label">출퇴근 <br> 체크</div>
					</li>
					<li class="widget-thumb shadow selected widget-sign">
						<div class="widget-thumb-label">결재함 <br> 목록</div>
					</li>
					<li class="widget-thumb shadow unselected widget-project">
						<div class="widget-thumb-label">프로젝트 <br> 리스트</div>
					</li>
					<li class="widget-thumb shadow unselected widget-schedule">
						<div class="widget-thumb-label">캘린더</div>
					</li><!-- end 위젯 썸네일들 -->
					
				</ul> <!-- end widget-thumb-container -->
				
				<!-- 선택된 위젯들 -->
				<div class="widget-selected-container">
					
					<!-- js로 위젯 생성할 자리 -->
					
					
				</div>
				
				
				
			</div>
			
		</div>
	</div>
</body>

</html>