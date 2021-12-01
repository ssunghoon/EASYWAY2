<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

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

/* th, td { */
/* color : yellow; */
/* font-weight: bold; */
/* } */
</style>


<!-- Custom styles for this template -->
<link href="/resources/css/sidebars.css" rel="stylesheet">
<div name="wrap"></div>
</head>
<body>
	<div class="container"></div>
<body>
	<jsp:include page="../public/sidebar.jsp" />


	<div class="container">

		<div class="row" style="margin-left: 100px;">



			<table class="table_table-striped"
				style="text-align: center; border: 1px solid #dddddd; margin-left: 150px; margin-top: 170px; width: 60%; position: absolute;">

				<div class="menu">
					<a href="/notice/noticelist"> <input type="button"
						class="btn btn-primary pull-right"
						style="margin-left: 145px; margin-top: 30px; width: 30%; position: absolute; height: 45px; font-size: 150%;"
						value="전체 공지사항"></a> <a href="*"> <input type="button"
						class="btn btn-primary pull-right"
						style="margin-left: 650px; margin-top: 30px; width: 40%; height: 45px; font-size: 150%;"
						value="부서 공지사항"></a>
				</div>

				<a href="/notice/noticeregister" class="btn btn-primary pull-right"
					style="margin-left: 1035px; margin-top: 50px; width: 8%;"
					value="글쓰기">글쓰기</a>
				<tr>

					<th style="background-color: #eeeeee; text-align: center;"></th>
					<th style="background-color: #eeeeee; text-align: center;">글번호</th>
<!-- 					<th style="background-color: #eeeeee; text-align: center;">사원번호</th> -->
<!-- 					<th style="background-color: #eeeeee; text-align: center;">부서번호</th> -->
					<th style="background-color: #eeeeee; text-align: center;">글제목</th>
					<!-- 					<th style="background-color: #eeeeee; text-align: center;">글내용</th> -->
					<th style="background-color: #eeeeee; text-align: center;">파일첨부</th>
					<th style="background-color: #eeeeee; text-align: center;">날짜</th>
					<th style="background-color: #eeeeee; text-align: center;">조회수</th>
				</tr>


				<c:forEach var="of_board" items="${noticelist }">
					<tr
						style="background-color: #11111; text-align: center; border: 1px;">
						<td><input type="hidden">
						<c:if test="${of_board.obFixedCheck == 'Y' }">
 								<span>
<!--  								<span class="label" style="color: white; font-weight: inherit; background-color: #6E6E6E; font-size: 100%;"> -->
 								</span>
<!-- <img src="//t1.daumcdn.net/editor/deco/contents/emoticon/things_14.gif?v=2" border="0" class="txc-emo"> -->
							</c:if>
						<td><c:out value="${of_board.obId }" /></td>
<%-- 						<td><c:out value="${of_board.employeeId }" /></td> --%>
<%-- 						<td><c:out value="${of_board.departmentId }" /></td> --%>
						<td style="text-align: left;"><a href="/notice/noticedetail?obId=${of_board.obId}">
								<c:out value="${of_board.obTitle}" />
								<c:if test="${of_board.obFixedCheck == 'Y' }">
<!-- 								<span class="label" style="color: white; font-weight: inherit; background-color: #6E6E6E; font-size: 100%;">공지</span> -->
							<img src="//t1.daumcdn.net/editor/deco/contents/emoticon/things_14.gif?v=2" border="0" class="txc-emo">
							</c:if>
<%-- 								<c:if test="${of_board.obFixedCheck == 'Y' }"> --%>
<!-- 								<span class="label" style="font-family: serif; color: blue; font-weight: bold;">강조</span> -->
<%-- 							</c:if> --%>
						</a></td>
						<%-- 						<td><c:out value="${of_board.obContent }" /></td> --%>
						<td><c:out value="${of_board.obFilePath }" /></td>
						<td>
							<%-- 						<c:out value="${of_board.obDate }" /> --%> <fmt:formatDate
								var="setObDate" value="${of_board.obDate }" pattern="yyyy-MM-dd" />${setObDate }<p>
						</td>
						<td><c:out value="${of_board.obView }" /></td>

					</tr>
				</c:forEach>
			</table>

			<!-- 	<form action="*" method="post"> -->
			<!-- 		<input type="checkbox" name="area" value="ob_title">제목 <input -->
			<!-- 						type="checkbox" name="area" value="employee_id">작성자 <input -->
			<!-- 						type="text" name="searchKey" size="10"> <input -->
			<!-- 						type="submit" value="검색"> -->
			<!-- 	</form> -->


		</div>
	</div>
</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/resources/js/menu.js"></script>
<script src="/resources/js/sidebars.js"></script>
</html>