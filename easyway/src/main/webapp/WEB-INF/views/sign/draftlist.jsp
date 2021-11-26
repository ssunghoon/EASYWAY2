<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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
<link href="${path }/css/reset.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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
<script type="text/javascript">
	$(".move")
	.on( "click",
			function(e) {	
				e.preventDefault();
				actionForm
						.append("<input type='hidden' name='signId' value='"
								+ $(this).attr(
										"href")
								+ "'>");
				actionForm.attr("action",
						"/sign/getdraft");
				actionForm.submit();	
			});
</script>
<!-- Custom styles for this template -->
<link href="/resources/css/sidebars.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../public/sidebar.jsp" />

	<div id="wrap">
		<div class="sign">

			<h4>기안함</h4>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<td class="col-lg-2"><b>기안양식</b></td>
						<td class="col-lg-4"><b>제목</b></td>
						<td class="col-lg-5"><b>내용</b></td>
						<td class="col-lg-1"><b>완료여부</b></td>
					</tr>
				</thead>
				<c:forEach var="sign" items="${draftList }">
					<tr>
						<c:set var="sf" value="1"/>
						<c:choose>
							<c:when test="${sign.signFormId == sf}">
								<td>기본 기안서</td>
							</c:when>
							<c:when test="${sign.signFormId == '2'}">
								<td>지출 결의서</td>
							</c:when>
							<c:when test="${sign.signFormId == '3'}">
								<td>휴가 신청서</td>
							</c:when> 
						</c:choose>
							
						<td><a class='move' href='/sign/getdraft?signId=<c:out value="${sign.signId}&signFormId=${sign.signFormId }"/>'>
						<c:out value="${sign.signTitle }" />
						</a></td>
						<td><c:out value="${sign.signContent }" escapeXml="false" /></td>
						<c:set var="ch" value="N"></c:set>
						<c:choose>
							<c:when test="${sign.signCheck == ch}">
								<td id="sign_check">상신한</td>
							</c:when>
							<c:otherwise>
								<td id="sign_check">완료된</td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</table>
<%-- 			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous"><a
					href="${pageMaker.startPage -1}">Previous</a></li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage}"
				end="${pageMaker.endPage}">
				<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
					<a href="${num}">${num}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next}">
				<li class="paginate_button next"><a
					href="${pageMaker.endPage +1 }">Next</a></li>
			</c:if>
			<form action="/sign/draftlist" method="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }"	>
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}"	>
			</form> --%>
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
<script src="./js/sidebars.js"></script>

</html>