<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*" %>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Status Update</title>
</head>
<body bgcolor=lightyellow text=green>
<form method=post action="StatusUpdateInsert.jsp">
	
		<h2 style="text-align:center;">
			<b>Report Form</b>
		</h2>
	
	<table align=center>
		<%
		String gid = request.getParameter("gid");
		session.setAttribute("gid", gid);
		String hno = (String) session.getAttribute("hno");
		try {
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			String sday = "";
			String prob = "";
			ResultSet rs = st.executeQuery("select to_char(day,'dd-mon-yy'),problem from grievance where gid="+ gid);
			if (rs.next()) {
				sday = rs.getString(1);
				prob = rs.getString(2);
			}
			else{
					response.sendRedirect("UpdateFail.jsp");
					
					
			}
		%>
		<tr>
			<td>Grievance Id:</td>
			<td><%=gid%></td>
		</tr>
		<tr>
			<td>Problem:</td>
			<td><%=prob%></td>
		</tr>
		<tr>
			<td>Date on which the complaint is placed:</td>
			<td><%=sday%></td>
		</tr>
		<tr>
			<td>Status:</td>
			<td><input type=radio name=status value=complete>Completed
			    <input type=radio name=status value="InProgess">In Process
			    <input type=radio name=status value="Not Yet Assigned">Not Yet Assigned</td>
		</tr>
		<tr>
			<td>Date Of Completion:</td>
			<td><input type=text name=doc></td>
		</tr>
		<tr>
			<td><input type=submit value=send></td>
		</tr>
		<tr>
	</table>

	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>
</form>
</body>
</html>