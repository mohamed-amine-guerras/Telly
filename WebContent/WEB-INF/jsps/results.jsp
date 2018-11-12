<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Reserve Bus</title>
</head>
<body>

	<h2>Reserve Bus</h2>

	<sf:form method="get"
		action="${pageContext.request.contextPath}/resultsfrom"
		commandName="bus">

		<table class="formtable">

			<tr>
				<td class="label">Leave From:</td>
				<td><sf:input class="control" path="leaveFrom" name="leaveFrom"
						type="text" /><br />
					<div class="error">
						<sf:errors path="leaveFrom"></sf:errors>
					</div></td>
			<tr>

				<td class="label">Going To:</td>
				<td><sf:input class="control" path="goingTo" name="goingTo"
						type="text" /><br />
					<div class="error">
						<sf:errors path="goingTo"></sf:errors>
					</div></td>
			<tr>
				<td class="label">Date Leave (YYYY-MM-DD):</td>
				
				<td><sf:input class="control" path="dateLeave" name="dateLeave"
						type="text" /><br />
					<div class="error">
						<sf:errors path="dateLeave"></sf:errors>
					</div></td>
			<tr>
				<td class="label">Date Return (YYYY-MM-DD):</td>
				<td><sf:input class="control" path="dateReturn"
						name="dateReturn" type="text" /><br />
					<div class="error">
						<sf:errors path="dateReturn"></sf:errors>
					</div></td>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Search" type="submit" /></td>
			</tr>
		</table>

	</sf:form>

	<c:forEach var="results" items="${results}">
		<p>
			<c:out value="${results.leaveFrom}"></c:out>
			<c:out value="${results.dateLeave}"></c:out>
		<p>
			<c:out value="${results.goingTo}"></c:out>
			<c:out value="${results.dateReturn}"></c:out>
		<p>

			<c:if test="${results != null}">
				<sf:form method="post"
					action="${pageContext.request.contextPath}/reservebook"
					commandName="bus">

					<sf:input type="hidden" name="dateReturn" path="dateReturn" />
					<sf:input type="hidden" name="dateLeave" path="dateLeave" />
					<sf:input type="hidden" name="leaveFrom" path="leaveFrom" />
					<sf:input type="hidden" name="goingTo" path="goingTo" />
	
					<input class="control" value="Book" type="submit" />


				</sf:form>
			</c:if>
	</c:forEach>





</body>
</html>