<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*" %>	
<%@page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=lightyellow text=green>
    <h1 style="text-align:center;">Suggestions And Feedback</h1><br>
	<table border=1 cellspacing=4 cellpadding=3 bordercolor=green align=center>
		<tr>
			<th>Suggestion Id</th>
			<th>Suggestion Feedback</th>
			<th>House number</th>
			<th>Sent date</th>
		</tr>
		<%
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select sid,sugg,hno,to_char(day,'dd-mon-yy') from suggfeedback where stdep='Administrator'");
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
	<%@include file="CloseButton.html" %>
	<a id="close" href="Adwelcome.html">Close</a>
	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</body>
</html>