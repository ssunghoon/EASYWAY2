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
<!-- Custom styles for this template -->
<link href="/resources/css/sidebars.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/resources/js/menu.js"></script>

</head>
<body>
<jsp:include page="../public/sidebar.jsp" />

	<div id="wrap">
		<div class="sign">
			<h4>기본 기안서</h4>
			 <a id="signLine" class="btn btn-primary ls-modal" data-toggle="modal" data-target="#modal">결재선</a>
			<form action="/sign/applybasic" action="/sign/signFilePath" method="post">
				제목 : <input type="text" name="signTitle"><br>
				공개 범위 : <select name="signBasicRange">
					 	<option value="1">전체공개</option>
					 	<option value="2">부서공개</option>
					 	<option value="3">비공개</option>
					 </select>
				<br>
				시작일 : <input type="date" name="signBasicStart"><br>
				종료일 : <input type="date" name="signBasicEnd"><br>
				중요도 : <input type="radio" name="signBasicImportance" id="first" value="상">&nbsp;<label for="first">상</label>
				 <input type="radio" name="signBasicImportance" id="second" value="중">&nbsp;<label for="second">중</label>
				 <input type="radio" name="signBasicImportance" id="third" value="하">&nbsp;<label for="third">하</label><br>
 				 <br>
 				
				<textarea id="summernote" name="signContent"></textarea>
				<br>
				<!--  기안 양식번호 --><input type="hidden" name="signFormId" value="1">
				<input type="submit" value="등록">
			</form>
			<!-- 결재선 모달 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<h4 class="modal-title" id="myModalLabel">결재선</h4>
						</div>
						<div class="modal-body">
							<div class="col-lg-6">
								<h6>결재선 설정</h6>
								<c:forEach var="employee" items="${employeeList }">
									<input type="radio" value="${employee.employeeId }" name="sign" id="emp${employee.employeeId }">
									<label for="emp${employee.employeeId }">
										<c:out value="${employee.employeeName}" />
									</label><br>
								</c:forEach>
							</div>
							<div class="col-lg-6">
								<div class="sign-box">
								</div>
								<div class="sign-box">
								</div>
								<div class="sign-box">
								</div>
								<div class="sign-box">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-gray"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary">저장</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
	</div>
</body>
<script type="text/javascript">
	$("#signLine").on("click", function() {
		$("#myModal").modal("show");
	});
</script>
<!-- summernote -->
<script src="/resources/js/summernote.js"></script>
<script src="/resources/summernote/summernote-lite.js"></script>
<script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summernote/summernote-lite.css">  
 
</html>