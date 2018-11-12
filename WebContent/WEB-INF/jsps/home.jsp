<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>
		<a href="${pageContext.request.contextPath}/createaccount">Create
			Account</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/login">Login</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/loggedout">Logout</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/results">Search</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/createtrip">Create a Trip</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/getreservations">My Reservations</a>
	</p>
	
	
	<c:forEach var="reserves" items="${reserves}">
	<p>
		<c:out value="${reserves.leaveFrom}"></c:out>
		<c:out value="${reserves.dateLeave}"></c:out>
		<c:out value="${reserves.goingTo}"></c:out>
		<c:out value="${reserves.dateReturn}"></c:out>
	</c:forEach>
	
	


</body>
</html>