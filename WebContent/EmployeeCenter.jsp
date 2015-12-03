<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile Center</title>

<head>
<link rel="stylesheet" type="text/css" href="header.css">
</head>

<body>
<div id="header"></div>

<div id="nav">
<a href="EmployeeHome.jsp" style="text-decoration:none"><font color="white" size = "4"><b>Home</b></font></a><br><br>
<a href="CustomerCenter.jsp" style="text-decoration:none"><font color="white" size = "4"><b>Customer Center</b></font></a><br><br>
<a href="PublicationCenter.jsp" style="text-decoration:none"><font color="white" size = "4"><b>Publications</b></font></a><br><br>
<a href="Printing.jsp" style="text-decoration:none"><font color="white" size = "4"><b>Printing</b></font></a><br><br>
<a href="Login.jsp" style="text-decoration:none"><font color="white" size = "4"><b>Log Out</b></font></a><br><br>
</div>

<div id="section">
<h2>Profile</h2>
<span id="message">${msg}<br></span>
<form action="EmpEditSrvlt" method="post">
	<table>
		<tr>
			<td>User Name: </td>
			<td>${uName}</td>
		</tr>
		<tr>
			<td>Password: </td>
    		<td>${hidPass}</td>
  		</tr>
  		<tr>
			<td>Password Recovery E-mail: </td>
    		<td>${email}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit User Info" name = "edit"></td></tr>
	</table>
	<br>
	<table>
		<tr>
  			<td>Company Address: </td>
  			<td>${company}</td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>${uAddress}</td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>${uCity}, ${uState} ${uZip}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Address" name="edit"></td></tr>
	</table>
	<br>
	<table>
		<tr>
  			<td>Customer Service E-mail: </td>
  			<td>${csEmail}</td>
  		</tr>
  		<tr>
  			<td>Customer Service Phone: </td>
  			<td>${csPhone}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Contact Info" name="edit"></td></tr>
	</table>
	<br>
	<table>
		<tr>
  			<td>File Path: </td>
  			<td>${path}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Path" name="edit"></td></tr>
	</table>
</form>
<br>

</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

