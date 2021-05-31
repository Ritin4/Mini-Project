<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
table {
	align: center;
	justify-content: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<form method="post" action="AddUserDetailsToDataBase.jsp">
		<table width="30%" colspan="5">
			<thead>
				<tr>
					<th colspan="2">Register Here!!</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="fname" value="" required /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lname" value="" /></td>
				</tr>
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="email" value="" required /></td>
				</tr>
				<tr>
					<td>HNO</td>
					<td><input type="text" name="hno" value="" required /></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="uname" value="" required /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" value="" required /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>