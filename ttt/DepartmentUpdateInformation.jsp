<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Information</title>
</head>
<body bgcolor=lightyellow text=green>
	<h2 style="text-align: center;">
		<b>Department Update Information</b>
	</h2>
	<br>
	<form method=post action="ModifyDetails.jsp">
		<table align=center>
			<%
			try {
				String s1 = request.getParameter("department");
				session.setAttribute("s1", s1);
				Connection con = Connect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(
				"select * from departmentlogin where deptname='" + s1 + "'");
				if (rs.next()) {
			%>
			<tr>
				<td>Department Id:</td>
				<td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type=text name="pwd" value=<%=rs.getString(2)%>></td>
			</tr>
			<tr>
				<td>Department Name:</td>
				<td><%=rs.getString(3)%></td>
			</tr>

			<tr>
				<td>Total Employees:</td>
				<td><input type=text name="temp" value=<%=rs.getString(4)%>></td>
			</tr>
			<tr>
				<td>Department Head:</td>
				<td><input type=text name="dhname" value=<%=rs.getString(5)%>></td>
			</tr>
			<tr class="blank_row">
				<td bgcolor="lightyellow" colspan="3">&nbsp;</td>
			</tr>
			<%
			}
			%>
			<tr>
				<td><input type="submit" value="Update"></td>
				<td><input type="reset" value="clear"></td>
			<tr>
		</table>

		<%
		} catch (Exception e) {
		out.println(e);
		}
		%>
	</form>
</body>
</html>