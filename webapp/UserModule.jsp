

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserPage</title>
<style>
  input{
  padding-left:10px;
  margin:10px;
  }
  #logout
  {
       position:relative;
       left:1000px;
  }
    
</style>
</head>
	
<body bgcolor=lightyellow text=blue>
	<marquee direction=right behavior=alternate>
			<h1 style="text-align:center;">
				<b>Welcome to user module</b>
			</h1>
	</marquee>
	<table align=center>
		<tr>
			<td>
				<form method=post action="grievanceform.jsp">
					<input type="submit" value="Grievance Form">
				</form>
			</td>
			<td>
				<form method=post action="GrievanceRecords.jsp">
					<input type="submit" value="Grievance Record">
				</form>
			</td>
			<td><form method=post action="SuggestionsFeedback.jsp">
					<input type="submit" value="Feedback">
				</form></td>			
			<td><form method=post action="useracknowledgment.jsp">
					<input type="submit" value="Acknowledgment">
				</form></td>
			<td><form method=post action="uchangepassword.jsp">
					<input type="submit" value="Change Password">
				</form>
		</tr>

	</table>
	<form method=post action="LogOut.jsp">
		<input id="logout" type="submit" value="LOGOUT">
	</form>
	<% 	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("userid")==null)
			response.sendRedirect("index.jsp");
        //response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	%>

</html>