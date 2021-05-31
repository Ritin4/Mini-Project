<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=lightyellow text=green>
	<form method=post action="sugg&feedbackinsert.jsp">		
			<h3>
				<b>Suggestion And Feedbacks</b>
			</h3>
		<table align=center>
			<%
			String hno = (String) session.getAttribute("hno");
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");//2(b) System.out.println("Driver loaded"); 
				String url = "jdbc:oracle:thin:@localhost:1521:XE";
				String uname = "db";
				String password = "db";
				Connection con = DriverManager.getConnection(url, uname, password);
				Statement st = con.createStatement();
				String sid = "";
				ResultSet rs = st.executeQuery("select nvl(max(sid),0)+1 from suggfeedback");
				if (rs.next()) {
					sid = rs.getString(1);
					System.out.println(sid);
				}
			%>
			<tr>
				<td>Suggestion Id:</td>
				<td><%=sid%></td>
			</tr>
			<tr>
				<td>House Number</td>
				<td><%=hno%></td>
			</tr>
			<tr>
				<td>Suggestions And Feedback:</td>
				<td><textarea name=sugg rows=5 cols=10></textarea></td>
			</tr>
			<tr>
				<td>Send To Department:</td>
				<td><select name="stdep">
						<option value="drainage">Drainage</option>
						<option value="roads&footpaths">Roads&Footpaths</option>
						<option value="power">Power</option>
						<option value="water">Water</option>
						<option value="paledepo">Pale depo</option>
						<option value="cleaning">Cleaning</option>
						<option value="administrator">Administrator</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Send"></td>
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