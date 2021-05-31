<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grievances</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center cellspacing=10 cellpadding=5 bordercolor=green border=3>
		<tr>
			<th>Grievance ID</th>
			<th>House Number</th>
			<th>Complaint placed day</th>
			<th>problem</th>
			<th>Status</th>
			<th>Category</th>
			<th>Date Of Completion</th>
		</tr>
		<%
		try {
			String hno = (String) session.getAttribute("hno");

			Class.forName("oracle.jdbc.driver.OracleDriver"); 
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String uname = "db";
			String password = "db";
			Connection con = DriverManager.getConnection(url, uname, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select gid,hno,to_char(day,'dd-mon-yy'),problem,status,category,doc from grievance where hno='"
					+ hno + "'");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</body>
</html>