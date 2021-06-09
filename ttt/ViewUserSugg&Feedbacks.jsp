<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<%@include file="CloseButton.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Suggestions And Feedback</title>
</head>
<body bgcolor=lightyellow text=green>
    <h1 style="text-align:center;">Suggestions&Feedback</h1><br><br>
	<table border=1 cellspacing=4 cellpadding=3 bordercolor=green align=center>
		<tr>
			<th>Suggestion id</th>
			<th>Suggestions & Feedback</th>
			<th>House Number</th>
			<th>Sent Date</th>
		</tr>
		<%
		String dname = (String) session.getAttribute("dname");
		try {			
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select sid,sugg,hno,to_char(day,'dd-mon-yy') from suggfeedback where stdep='"+ dname + "'");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<a id="close" href="DepartmentWelcome.jsp">Close</a>
	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</body>
</html>