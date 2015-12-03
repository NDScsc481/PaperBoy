<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Lookup</title>

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
<h1>Lookup Customer</h1><br><br>
Please Search by name and select customer with customer ID.
<span id="error">${errorMsg}</span>
<form action="CustSearchSrvlt" method="post">
    <input type="text" name="n" value="${names}"/><input type="submit" value="Submit Name" name="sub">
    <br><sup>Search by name (first and/or last name).</sup><br><br>
    <input type="text" name="id"/><input type="submit" value="Submit ID" name="sub">
    <br><sup>Select by customer ID.</sup>
</form>
<span>${results}</span>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

