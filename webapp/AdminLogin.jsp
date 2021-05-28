<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLoginVerification</title>
</head>
<body>
 <%
   String id = request.getParameter("adid");
   String pwd= request.getParameter("pass");
   try{
	   String url = "jdbc:oracle:thin:@localhost:1521:XE";
	   String uname = "wethree"; 
	   String password = "proj"; 
	   Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
	   Connection con = DriverManager.getConnection(url,uname,password);
       Statement st = con.createStatement(); 
       ResultSet rs = st.executeQuery("select * from Admin where Admin_id='" + id + "' and password='" + pwd + "'");
       if(rs.next())
       {
    	       session.setAttribute("id",id);
    	       response.sendRedirect("Adwelcome.html");
       }
       else
       {
    	   response.sendRedirect("adinvalid.html");
       }
   }
   catch(Exception e)
   {
	   out.print(e);
   }
 %>
</body>
</html>