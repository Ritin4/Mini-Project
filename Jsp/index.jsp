<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
  table{
   align:center;
   justify-content:center;
   margin-left:auto;
   margin-right:auto;
  }
</style>
</head>
<body>
   <form method ="post" action="login.jsp">      
            <table width="30%" cellpadding="3">
               <thead>
                 <tr>
                   <th colspan="2">Login Here</th>
                 </tr>
               </thead>
               <tbody>
                 <tr>
                  <td>User Name</td>
                  <td><input type="text" name="uname" value=""/></td>
                  </tr> 
                  <tr>
                  <td>Password</td>
                  <td><input type="password" name="pass" value=""/></td>
                  </tr>
                  <tr>
                  <td>House No</td>
                  <td><input type="text" name="hno" value=""/></td>
                  </tr>  
                  <tr>
                    <td><input type="submit" value="Login"/></td>
                    <td><input type="reset" value="Reset"/></td>
                  </tr>                                       
                  <tr>
                   <td colspan="2">Yet Not Registered !!<a href="regpage.jsp">Register Now!!</a></td>
                  </tr>           
               </tbody>
            </table>     
   </form>
</body>
</html>