<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Login Verification</title>
</head>
<body>
<%
int s1=Integer.parseInt(request.getParameter("departmentid"));
String s2=request.getParameter("password");
String s3=request.getParameter("department");
try{
	   String url = "jdbc:oracle:thin:@localhost:1521:XE";
	   String uname = "wethree"; 
	   String password = "proj"; 
	   Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
	   Connection con = DriverManager.getConnection(url,uname,password);
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select dname,dhname from departmentlogin where duid="+s1+" and password='"+s2+"'");
	   String dname="";
	   String dhname="";
	   if(rs.next())
       {

         dname=rs.getString(1);
         dhname=rs.getString(2);
         session.setAttribute("s1",s1);
         session.setAttribute("dname",dname);
         session.setAttribute("dhname",dhname);
         if(s3.equals(dname))
          { 
        
                 response.sendRedirect("depwelcome.jsp");
          }
         
        }
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>