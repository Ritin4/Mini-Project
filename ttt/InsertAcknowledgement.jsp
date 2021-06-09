<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center>
		<%
		String dname = (String) session.getAttribute("dname");
		String ack = request.getParameter("ack");
		String thno = request.getParameter("thno");

		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String no = "";
			ResultSet rs = st.executeQuery("select nvl(max(ackno),0)+1 from ack");
			if (rs.next()) {
				no = rs.getString(1);
			}
			int n = st.executeUpdate(
			"insert into ack (ackno,acknowledgment,thno,fdept)values(" + no+ ",'" + ack + "','" + thno + "','" + dname + "')");
			out.println("<font color=blue>values are inserted</font>");
		} catch (Exception e) {
			out.println(e);
		}
		%>
	
</body>
</html>