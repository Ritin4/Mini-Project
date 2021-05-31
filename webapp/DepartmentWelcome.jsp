<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departments</title>
<style>
body {
	background: lightyellow;
	color: green;
	text-align: center;
}

input {
	margin: 10px;
}

table {
    
	float:center;
}

#logout {
	position: relative;
	left: 500px;
}

</style>
</head>

<body bgcolor=lightyellow text=green>
	<%
	String s5 = (String) session.getAttribute("dname");
	out.println(
			"<font color=blue size=10><marquee direction=right behavior=alternate>welcome to "
			+ s5 + " department</marquee></font>");
	%><br>
	<br>
	<table align=center>
		<tr>
			<td>
				<form method=post action="viewgrievances.jsp">
					<input type="submit" value="View Grievances">
				</form>
			</td>
			<td>
				<form method=post action="reportform.jsp">
					<input type="submit" value="Report Form">
				</form>
			</td>
			<td>
				<form method=post action="dviewhouses.jsp">
					<input type="submit" Value="View Houses">
				</form>
			</td>
			<td><form method=post action="viewgodown.jsp">
					<input type="submit" value="View Godown">
				</form></td>
			<td><form method=post action="depsugg&feedback.jsp">
					<input type="submit" value="View Feedbacks">
				</form></td>
			<td><form method=post action="depack.jsp">
					<input type="submit" value="Acknowledgment">
				</form>	
			<td><form method=post action="depchangepassword.html">
					<input type="submit" value="Change Password">
				</form></td>
		</tr>
	</table>
	<form method=post action="Home.html">
		<input id="logout" type="submit" value="Log out">
	</form>
</body>
</html>