<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Departments</title>
</head>
<body>
	<h2 style="text-align: center;">
		<b>Remove Departments</b>
	</h2>
	<form method=post action="dropdepartment.jsp">
	<%try{ %>
		<table align=center>
			<tr>
				<td>Department name:</td>
				<td><%@include file="DepartmentsDropDownList.jsp" %></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td><input type="submit" value="Select"></td>
			</tr>
		</table>

		<%
		} catch (Exception e) {
		out.println(e);
		}
		%>
	</form>
</body>
</html>