<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body text=blue>
       <form method=post action="ChangePass.jsp">
       <h1><b>Change Password</b></h1>
      <table align=center>
       <tr><td>Enter New Password</td><td><input type="password" name="repassword"></td></tr>
       <tr><td><input type="submit" value="Change"></td></tr>
      </table>
       </form>
    </body>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("userid")==null)
            response.sendRedirect("Home.jsp");
        //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    %>
</html>