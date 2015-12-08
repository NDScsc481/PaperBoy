<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Profile</title>

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

		<tr>
			<td>Phone Number: </td>
    		<td>${phone}</td>
  		</tr>
		<tr>
  			<td>Street Address: </td>
  			<td>${address}</td>
  		</tr>
  		<tr>
  			<td>Street Address 2: </td>
  			<td>${addr2}</td>
  		</tr>
  		<tr>
  			<td>City: </td>
  			<td>${city}</td>
  		</tr>
  		<tr>
  			<td>State: </td>
  			<td>${state}</td>
  		</tr>
  		<tr>
  			<td>Zip: </td>
  			<td>${zip}</td>
  		</tr>
	</table>
	<input type="hidden" name="CID" value="${CID}">
	<input type="hidden" name="firstName" value="${firstName}">
	<input type="hidden" name="lastName" value="${lastName}">
	<input type="submit" value="Edit Customer Details" name="add"><br><br>
	<input type="submit" value="Edit Customer Subscriptions" name="add">
</form>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

