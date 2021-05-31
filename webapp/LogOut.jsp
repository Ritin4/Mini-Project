<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
//HttpSession ses = request.getSession();
//out.print(session.getAttribute("hno"));
out.print( session.getId());
session.removeAttribute("userid");
session.removeAttribute("password");
session.removeAttribute("hno");
session.invalidate();
//out.print(session.getAttribute("hno"));
//out.print("Invalidated");
response.sendRedirect("Home.html");
%>
</body>
</html>