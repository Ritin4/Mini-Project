<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Manage Departments</title>
<style>
table {
	display: flex;
	align-items: center;
	justify-content: center;
}

input {
	padding-left:20px;
	margin:10px;
}
</style>
</head>
<body bgcolor=lightyellow text=green>
	<h1 style="text-align: center;">Manage Departments</h1>
	<table>
		<tr>
			<td>
				<form method=post action="ViewDepartments.jsp">
					<input type="submit" value="View Departments">
				</form>
			</td>
			<td>
				<form method=post action="NewDepartmentAdd.jsp">
					<input type="submit" value="Add Departments">
				</form>
			</td>
			<td>
				<form method=post action="DropDepartments.jsp">
					<input type="submit" value="Drop Departments">
				</form>
			</td>
			<td>
				<form method=post action="SelectDepartment_Update.jsp">
					<input type="submit" value="Update Departments">
				</form>
			</td>
		</tr>
	</table>
	<%@include file="CloseButton.html" %>
	<a id="close" href="Adwelcome.html">Close</a>
</body>
</html>