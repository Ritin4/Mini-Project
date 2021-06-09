<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>	
<%@ page import="grev.Connect" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modify</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center>
		<%
		try {
			String s1 = (String) session.getAttribute("s1");
			String duid = request.getParameter("duid");
			String pwd = request.getParameter("pwd");
			String dhname = request.getParameter("dhname");
			String temp = request.getParameter("temp");
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			int i = st.executeUpdate("update departmentlogin set password='" + pwd+ "',depthead='" + dhname + "',total_employees=" + temp
			+ " where deptname='" + s1 + "'");
			out.println("<font color=green size=6> you have succesfully modify your details</font>");
		} catch (Exception e) {
			out.println(e);
		}
		%>
	</table>
</body>
</html>