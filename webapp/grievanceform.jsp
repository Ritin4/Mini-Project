<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method=post action="grievance.jsp">
		<center>
			<h2>
				<b>Grievance Form</b>
			</h2>
			<table align=center>
				<%
				String hno = (String) session.getAttribute("hno");
				try {					
					Class.forName("oracle.jdbc.driver.OracleDriver");
					String url = "jdbc:oracle:thin:@localhost:1521:XE";
					String uname = "db";
					String password = "db";
					Connection con = DriverManager.getConnection(url, uname, password);
					Statement st = con.createStatement();
					String gid = "";
					ResultSet rs = st.executeQuery("select nvl(max(gid),0)+1 from grievance");
					if (rs.next()) {
						gid = rs.getString(1);
					}
				%>
				<tr>
					<td>Grievance Id:</td>
					<td><%=gid%></td>
				</tr>
				<tr>
					<td>House Number:</td>
					<td><%=hno%></td>
				</tr>
				<tr>
					<td>Department Name:</td>
					<td><select name=department required>
							<option value="drainage">drainage</option>
							<option value="roads&footpaths">roads&footpaths</option>
							<option value="water">water</option>
							<option value="power">power</option>
							<option value="paledepo">paledepo</option>
							<option value="cleaning">cleaning</option>
							<option value="Select" selected>-</option>
					</select></td>
				</tr>
				<tr>
					<td>Problem:</td>
					<td><textarea rows=5 cols=15 name="prob"></textarea></td>
				</tr>
				<tr>
					<td>Category:</td>
					<td><input type=radio name="catg" value=normal>Normal<input
						type=radio name="catg" value=emergency>Emergency</td>
				</tr>
				<%
				} catch (Exception e) {
				out.println(e);
				}
				%>
				<tr>
					<td><input type=submit value="send"></td>
					<td><input type=reset value="reset"></td>
				</tr>
			</table>
	</form>
</body>
</html>