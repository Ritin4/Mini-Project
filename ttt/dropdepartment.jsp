<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="grev.Connect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center>
		<%
		String s1 = request.getParameter("department");

		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int no = st.executeUpdate(
			"delete from departmentlogin where deptname='" + s1 + "'");
			out.println("drop department successfully");

		} catch (Exception e) {
			out.println(e);
		}
		%>
	
</body>
</html>