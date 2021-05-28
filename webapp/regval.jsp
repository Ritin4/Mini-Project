<%@ page import ="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
  
   String user = request.getParameter("uname");
   String pwd = request.getParameter("pass");
   String fname=request.getParameter("fname");
   String lname = request.getParameter("lname");
   String email = request.getParameter("email");
   String Hno = request.getParameter("hno");
   String url = "jdbc:oracle:thin:@localhost:1521:XE";
   String uname = "wethree"; 
   String password = "proj"; 
   Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
   Connection con = DriverManager.getConnection(url,uname,password);
   out.println("Success");
   Statement st = con.createStatement();   
       
   int i = st.executeUpdate("insert into Persons(FirstName,LastName,Email,Hno,Uname,Pass) values('" + fname + "','" + lname + "','" + email + "','" +Hno+"','"+ user + "','" + pwd + "')");
   if (i>0)
   { 
	   response.sendRedirect("Welcome.jsp");
    }
    else
    {
          response.sendRedirect("index.jsp");	
     }
 %>