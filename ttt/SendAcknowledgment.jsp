<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="grev.Connect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Acknowledgment</title>
</head>
<body bgcolor=lightyellow text=green>
	<form method=post action="InsertAcknowledgement.jsp">

		<h1 style="text-align:center">
			<b>Send Feedback To Users</b>
		</h1>

		<table align=center>
			<%
			try {
				Connection con = Connect.getCon();
				Statement st = con.createStatement();
				String no = "";
				ResultSet rs = st.executeQuery("select nvl(max(ackno),0)+1 from ack");
				if (rs.next()) {
					no = rs.getString(1);
				}
			%>
			<tr>
				<td>Acknowledgement Number:</td>
				<td><%=no%></td>
			</tr>
			<tr>
				<td>Acknowledgement:</td>
				<td><textarea name=ack rows=5 cols=10></textarea></td>
			</tr>
			<tr>
				<td>To House Number:</td>
				<td><input type=text name=thno></td>
			</tr>
			<tr>
				<td><input type=submit value=send></td>
			</tr>
		</table>
		<%
		} catch (Exception e) {
		out.println(e);
		}
		%>
	</form>
</body>
</html>