<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Department Information</title>
</head>
<body bgcolor=lightyellow text=green>
	<h3>
		<b>Update Department Information</b>
	</h3>
	<form method=post action="DepartmentUpdateInformation.jsp">
	<% try{ %>
		<table align=center>
			<tr>
				<td>Department Name:</td>
				<td><%@include file="DepartmentsDropDownList.jsp" %></td>
			</tr>
			<tr>
				<td><input type=submit value="select"></td>
			</tr>
		</table>
	</form>

	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</body>
</html>