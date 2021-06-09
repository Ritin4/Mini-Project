<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body bgcolor=lightyellow text=green>
	<table align=center>
		<%		
		
		try {
			String s1 = (String) session.getAttribute("userid");	
			String s2 = request.getParameter("repassword");
		
			Connection con = Connect.getCon();
			Statement st = con.createStatement();			
			int no = st.executeUpdate("update persons set pass='" + s2 + "' where uname= '" + s1+"'");            
			out.println("<font color=blue size=10>welcome..." + s1+ "   you have successfully changed password <br>login <a href='LogOut.jsp'>Login</a></font>");
		} catch (Exception e) {
			System.out.println(e);
		}
		%>
	</table>
</body>
</html>