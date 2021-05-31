<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<%

// Retrieving details from index.jsp
String userid = request.getParameter("uname");
String pwd = request.getParameter("pass");
String hno = request.getParameter("hno");

//Establishing Connection
Connection con = Connect.getCon();//DriverManager.getConnection(url, uname, password);
Statement st = con.createStatement();
//response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
ResultSet rs;

//Executing Query
rs = st.executeQuery("select * from Persons where uname='" + userid
		+ "' and pass='" + pwd + "' and Hno='" + hno + "'");
if (rs.next()) {
	session.setAttribute("userid", userid);
	session.setAttribute("password", pwd);
	session.setAttribute("hno", hno);
	//response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.sendRedirect("UserModule.jsp");
	
} else {
	out.println("Invalid username/password <a href='index.jsp'><br> Try Again</a>");
}

%>
<!--  End -->