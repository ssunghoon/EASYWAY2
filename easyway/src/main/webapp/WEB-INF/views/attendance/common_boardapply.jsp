<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>편하게 오피스 작업을! EasyWay!</title>

    <!--jQuery, Bootstrap, fontawesome 등 참고사항 -->
    <!-- 주의! jQuery가 Bootstrap보다 위에 있어야 합니다.  -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Oxanium:wght@500&display=swap"
		rel="stylesheet">
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	
    <!-- EASYWAY 전용 공통부 CSS -->
    <link href="/resources/css/reset.css" rel="stylesheet">
    <link href="/resources/css/sidebars.css" rel="stylesheet">
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/common_boardapply.css" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

</head>

<body>

	<!-- sidebar ------------------------------------------------------------------------------->
    <jsp:include page="../public/sidebar.jsp" />
    
    <div class= "page-divider">
	    <div class="sidebar-background"></div>
	
	
		<!-- 페이지 표현 부분 -------------------------------------------------------------------------->
	    <div class="easyway-wrapper">
	
	        <div class="easyway-container">
	
	            <div class="easyway-boardapply-pagetitle">
	                <!-- 게시물 작성 타이틀 -->
	                <div class="easyway-title1">
	                    페이지 이름 들어갈 자리 (ex. 기본 기안 양식 작성)
	                </div>
	            </div>
	            <div class="easyway-boardapply-whitespace">
	            	<!-- 여백 -->
	            </div>
	            <div class="easyway-boardapply-save">
	                <!-- 임시저장 버튼 -->
	                <button type="button" class="easyway-btn">임시 저장</button>
	            </div>
	            
	            <div class="easyway-boardapply-form">
	            
		            <form class="form-container" action="" action="" method="post">
		            
			        	<div class="form-title">
			                <!-- 제목 -->
			                제목
			            </div>
			            <div class="form-title-input">
			                <!-- 제목 : 작성칸 -->
			                <input type="text" name="">
			            </div>
			            <div class="form-writer">
			                <!-- 작성자 -->
			                작성자
			            </div>
			            <div class="form-writer-input">
			                <!-- 작성자 : 작성칸 -->
			                <!-- class는 input이라고 이름붙였지만, read-only로 해주세요 -->
			            </div>
			            
			            <div class="form-option1">
			                <!-- 입력1 -->
			                입력 옵션 1
			            </div>
			            <div class="form-option1-input">
							<!-- 입력1 : 작성칸 -->
			            </div>
			            <div class="form-option2">
			                <!-- 입력2 -->
			                입력 옵션 2
			            </div>
			            <div class="form-option2-input">
							<!-- 입력2 : 작성칸 -->
			            </div>
			            <div class="form-option3">
			            	<!-- 입력3 -->
			            	입력 옵션 3
			            </div>
			            <div class="form-option3-input">
			            	<!-- 입력3 : 작성칸 -->
			            </div>
			            <div class="form-option4">
			            	<!-- 입력4 -->
			            	입력 옵션 4
			            </div>
			            <div class="form-option4-input">
			            	<!-- 입력4 : 작성칸 -->
			            </div>
			            <div class="form-option5">
			            	<!-- 입력5 -->
			            	입력 옵션 5
			            </div>
			            <div class="form-option5-input">
			            	<!-- 입력5 : 작성칸 -->
			            </div>
			            
			            <div class="form-file">
			            	<!-- 첨부 파일 -->
			            	첨부 파일
			            </div>
			            <div class="form-file-input">
			            	<!-- 첨부 파일 -->
			            </div>
			            
			            <div class="form-content">
			            	<!-- 내용 -->
			            	내용
			            </div>
			            <div class="form-content-input">
			            	<!-- 내용 작성칸 -->
							<!------------------------------------------------------------------------------------------------->
							<!-- summernote 넣은 부분 ---------------------------------------------------------------------->
							<!------------------------------------------------------------------------------------------------->
							<textarea class="summernote" ></textarea>
			            </div><!-- end content -->
			            <div class="form-submit">
			            	<!-- 등록 버튼 -->
			            	<button type="button" class="easyway-btn">등록</button>
			            </div>
			            
			    	</form>
			    	
	            </div> <!-- end easyway-boardapply-form -->
	            
	        </div> <!-- end easyway-container -->
	    </div> <!-- end easyway-wrapper -->
	    
    </div> <!-- end page-divider -->

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="/resources/js/menu.js"></script>

<!-- summernote -->
<script src="/resources/js/summernote.js"></script>
<script src="/resources/summernote/summernote-lite.js"></script>
<script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summernote/summernote-lite.css">

</html>