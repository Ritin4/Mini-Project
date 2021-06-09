<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departments</title>
</head>
<body bgcolor=lightyellow text=green>
	<h1 style="text-align: center;">Departments</h1>
	<table border=1 cellspacing=4 cellpadding=3 bordercolor=green align=center>
		<tr>
			<th>Department Id</th>
			<th>Department Name</th>
			<th>Department Head name</th>
			<th>Total Employees</th>
		</tr>
		<%
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select deptid,deptname,depthead,total_employees from departmentlogin");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<%
		}
		} catch (Exception e) {
			out.println(e);
			}
		%>
	</table>
	<%@ include file="CloseButton.html" %>
	<a id="close" href="ManageDepartments.jsp">Close</a>
	
</body>
</html>