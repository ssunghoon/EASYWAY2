<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-6">
		<h6>결재선 설정</h6>
		<c:forEach var="employee" items="${employeeList }">
			<c:out value="${employee.employeeName}" />
		</c:forEach>
	</div>
	<div class="col-lg-6"></div>
</body>
</html>