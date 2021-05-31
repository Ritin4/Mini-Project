<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
	String gid = (String) session.getAttribute("gid");
	String status = request.getParameter("status");
	String doc = request.getParameter("doc");

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String uname = "wethree";
		String password = "proj";
		Connection con = DriverManager.getConnection(url, uname, password);
		Statement st = con.createStatement();
		String date = "";
		int no = st.executeUpdate("update grievance set status='" + status+ "', doc='" + doc + "' where gid=" + gid);
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>