<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Create Trip</title>
</head>
<body>

	<h2>Create a Bus Trip</h2>

	<sf:form method="post"
		action="${pageContext.request.contextPath}/createreserve"
		commandName="bus">

		<table class="formtable">
			<tr>
				<td class="label">Leave Date:</td>
				<td><sf:input class="control" path="dateLeave" name="dateLeave" type="text" /><br />
					<div class="error">
						<sf:errors path="dateLeave"></sf:errors>
					</div></td>
			<tr>
			<tr>
				<td class="label">Return Date:</td>
				<td><sf:input class="control" path="dateReturn" name="dateReturn" type="text" /><br />
					<div class="error">
						<sf:errors path="dateReturn"></sf:errors>
					</div></td>
			<tr>
			<tr>
				<td class="label">Leave From:</td>
				<td><sf:input class="control" path="leaveFrom" name="leaveFrom" type="text" /><br />
					<div class="error">
						<sf:errors path="leaveFrom"></sf:errors>
					</div></td>
			<tr>
			<tr>
				<td class="label">Going to:</td>
				<td><sf:input class="control" path="goingTo" name="goingTo" type="text" /><br />
					<div class="error">
						<sf:errors path="goingTo"></sf:errors>
					</div></td>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create Trip" type="submit" /></td>
			</tr>
		</table>

	</sf:form>

</body>
</html>