<%@ page import ="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="grev.Connect" %>
<%
  //Fetching details from RegistrationPage.jsp
   String user = request.getParameter("uname");
   String pwd = request.getParameter("pass");
   String fname=request.getParameter("fname");
   String lname = request.getParameter("lname");
   String email = request.getParameter("email");
   String Hno = request.getParameter("hno");
   
   //Establishing Connection
   /* String url = "jdbc:oracle:thin:@localhost:1521:XE";
   String uname = "db";
   String password=request.getParameter("password");
   System.out.println(password); 
   String password = "db"; 
   Class.forName("oracle.jdbc.driver.OracleDriver");
  */
   Connection con = Connect.getCon();
   out.println("Success");
   
   //Executing Query
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
 <!-- End -->