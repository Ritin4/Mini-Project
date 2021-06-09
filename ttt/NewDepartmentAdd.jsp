<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Departments</title>
</head>
<body bgcolor=lightyellow text=green>
	<h1 style="text-align:center;">
		<b>Add New Departments</b>
	</h1>
	<form method=post action="InsertNewDepartment.jsp">
		<table align=center>
			<%
			try {
				Connection con = Connect.getCon();
				Statement st = con.createStatement();
				String duid = "";
				ResultSet rs = st
				.executeQuery("select nvl(max(deptid),0)+1 from departmentlogin");
				if (rs.next()) {
					duid = rs.getString(1);
				}
			%>
			<tr>
				<td>Department id:</td>
				<td><%=duid%></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type=password name=pwd></td>
			</tr>
			<tr>
				<td>Department Name:</td>
				<td><input type=text name=dname></td>
			</tr>
			<tr>
				<td>Head Name:</td>
				<td><input type=text name=dhname></td>
			</tr>
			<tr>
				<td>Total Employees:</td>
				<td><input type=text name=temp></td>
			</tr>
			<tr class="blank_row">
					<td bgcolor="lightyellow" colspan="3">&nbsp;</td>
				</tr>
			<tr>
				<td><input type="submit" value="Add"></td>
				<td><input type="Reset" value="Clear"></td>
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