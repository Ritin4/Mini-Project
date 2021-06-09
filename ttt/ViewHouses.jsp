<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="grev.Connect" %>	
<%@ page import="java.sql.*" %>
<%@include file="CloseButton.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Houses</title>
</head>
<body bgcolor=lightyellow text=green>
    <h1 style="text-align:center;">Houses </h1></br>
	<table border=3 align=center cellspacing=15 cellpadding=5 bordercolor=green>
		<tr>
			<th>Owner Name</th>
			<th>House No</th>
			<th>Street</th>
			<th>Location</th>
			<th>Pin Code</th>
		</tr>
		<%
		String dname = (String) session.getAttribute("dname");
		try {

			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(" select distinct  p.firstname,p.lastname,p.hno,p.sname,p.address,p.zipcode from persons p , grievance g where g.hno= p.hno and g.dname='"+ dname + "'");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)+" "+rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<a id="close" href="DepartmentWelcome.jsp">Close</a>
	<%
	} catch (Exception e) {
	out.println(e);
	}
	%>

</body>
</html>