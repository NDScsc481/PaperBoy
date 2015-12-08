<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Printing Options</title>

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
<h1><font color=#9c3141 face="arial">Printing</font></h1>

<form action="PrintSrvlt" method="post">
<input type="submit" value="Delivery" name="sub"><br>Print delivery list for each driver.<br><br>
<input type="submit" value="Full Summary" name="sub"><br>Print today's full list of deliveries<br><br>
<input type="submit" value="Bills" name="sub"><br> Print this month's bills<br><br>
</form> 
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

