<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<head>
<link rel="stylesheet" type="text/css" href="header.css">
</head>

<body>
<div id="header">
</div>

<div id="nav">
<ul>
  <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>  
  <li><a class="active" href="CustomerCenter.jsp">Customers</a></li>
  <li><a href="PublicationCenter.jsp">Publications</a></li>
  <li><a href="Printing.jsp">Printing</a></li>
  <ul style="float:right;list-style-type:none;">
  <li><a href="EmployeeHome.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
  <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>

<div id="bckgrnd">
<div id="section">
<h2> Customer Profile</h2>
<span id="message">${msg}<br></span>
<form action="CustEditSrvlt" method="post">
	<table>
		<tr>
			<td>Customer ID: </td>
			<td>${CID}</td>
		</tr>
		<tr>
			<td>First Name: </td>
			<td>${firstName}</td>
		</tr>
		<tr>
			<td>Last Name: </td>
    		<td>${lastName}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Name" name = "edit"></td></tr>
	</table>
	<br>
	<table>
		<tr>
			<td>Phone Number: </td>
    		<td>${phone}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Number" name = "edit"></td></tr>
	</table>
	<br>
	<table>
		<tr>
  			<td>Street Address: </td>
  			<td>${addr}</td>
  		</tr>
  		<tr>
  			<td>Street Address 2: </td>
  			<td>${addr2}</td>
  		</tr>
  		<tr>
  			<td>City: </td>
  			<td>${uCity}</td>
  		</tr>
  		<tr>
  			<td>State: </td>
  			<td>${uState}</td>
  		</tr>
  		<tr>
  			<td>Zip: </td>
  			<td>${uZip}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Address" name="edit"></td></tr>
	</table>
</form>
</div>
</div>
<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

