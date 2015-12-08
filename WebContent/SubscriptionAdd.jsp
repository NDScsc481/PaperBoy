<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Subscription</title>

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

<div><h2>Add Subscription(s)</h2>
<span id="error">${errorMsg}</span>
<form action="SubAddSrvlt" method="post">
	${firstName} ${lastName}<br>
	<input type="hidden" name="CID" value="${CID}">
	<input type="text" name="addid" placeholder="Add by Publication ID">
    <input type="submit" value="Add subscription" name="add">  <input type="submit" value="Cancel" name="sub">  
    <br><br><h1>All publications</h1><br>
    ${results}<br>
</form>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>