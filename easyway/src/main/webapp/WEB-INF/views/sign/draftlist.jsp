<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<!-- Custom styles for this template -->
<link href="/resources/css/sidebars.css" rel="stylesheet">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="/resources/js/menu.js"></script>

</head>
<body>
	<jsp:include page="../public/sidebar.jsp" />

	<div id="wrap">
		<div class="sign">
			<h4>기안함</h4>
			<br>
			<form id="searchForm" action="/sign/draftlist" method="get" >
				<select name="keyword1" id="keyword1">
				    <option value="0">전체</option> 
					<option value="1">기본기안서</option>
					<option value="2">지출결의서</option>
					<option value="3">휴가신청서</option>
				</select>
				<input type="text" name="keyword2" placeholder="제목" />
				<input type='hidden' name='pageNum'
				value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
				<input type='hidden' name='amount'
				value='<c:out value="${pageMaker.cri.amount}"/>' />
			<button class="btn btn-primary">검색</button>
			</form>
			<table class="table table-bordered">
				<thead>
					<tr>
						<td class="col-lg-3"><b>기안양식</b></td>
						<td class="col-lg-5"><b>제목</b></td>
						<td class="col-lg-2"><b>완료여부</b></td>
						<td class="col-lg-2"><b>작성일자</b></td>
						
					</tr>
				</thead>
				<c:forEach var="sign" items="${draftList }">
					<tr>
						<c:set var="sf" value="1" />
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

						<td>
							<a class='move'
							href='/sign/getdraft?signId=<c:out value="${sign.signId}&signFormId=${sign.signFormId }"/>'>
								<c:out value="${sign.signTitle }" />
							</a>
						</td>
						<c:set var="ch" value="N" />
						<c:choose>
							<c:when test="${sign.signCheck == ch}">
								<td id="sign_check">상신한</td>
							</c:when>
							<c:otherwise>
								<td id="sign_check">완료된</td>
							</c:otherwise>
						</c:choose>
						<td>
						<fmt:formatDate value="${sign.signDate}" pattern="yyyy-MM-dd"/>
						</td>
					</tr>
				</c:forEach>
			</table>
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous">
				<a href="${pageMaker.startPage -1}">Previous</a></li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
					<a href="${num}">${num}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next}">
				<li class="paginate_button next">
				<a href="${pageMaker.endPage +1 }">Next</a></li>
			</c:if>
		</div>
	</div>
	<form id="actionForm" action="/sign/draftlist" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
		<input type='hidden' name='keyword1' value='<c:out value="${ pageMaker.cri.keyword1 }"/>'>
	</form>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						
						
	// 페이징					
	$(".paginate_button a").on(
			"click",
			function(e) {
	
				e.preventDefault();
	
				console.log('click');
	
				$("#actionForm").find("input[name='pageNum']")
						.val($(this).attr("href"));
				$("#actionForm").submit();
		});
	// 검색
	var key = $("#keyword1 option:selected").val();
	var searchForm = $("#searchForm");
	$("#searchForm button").on(
			"click",
			function(e) {
			if (!searchForm.find("option:selected")
					.val()) {
				alert("기안종류를 선택하세요");
				return false;
			}
				searchForm.find("nput[name='pageNum']")
					.val("1");
				e.preventDefault();
				
				searchForm.submit();
			});
		});
	
</script>
</body>



</html>