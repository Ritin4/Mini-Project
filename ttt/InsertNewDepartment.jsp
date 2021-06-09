<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center>
		<%
		String s2 = request.getParameter("pwd");
		String s3 = request.getParameter("dname");
		int s4 = Integer.parseInt(request.getParameter("temp"));
		String s5 = request.getParameter("dhname");
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String duid = "";
			ResultSet rs = st.executeQuery("select nvl(max(deptid),0)+1 from departmentlogin");
			if (rs.next()) {
				duid = rs.getString(1);
			}
			int no = st.executeUpdate("insert into departmentlogin values(" + duid+ ",'" + s2 + "','" + s3 + "'," + s4 + ",'" + s5 + "')");
			out.println("add new iteminformation successfully");

		} catch (Exception e) {
			out.println(e);
		}
		%>
	</table>
</body>
</html>