<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Profile</title>

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

<div><h2>Edit User Info</h2>
<span id="error">${errorMsg}</span>
<form action="EmpEditSubSrvlt" method="post">
	<input type="text" name="name" value="${uName}"/><br><sup>Username (3-16 characters; no spaces)</sup><br><br>
    <input type="password" name="pass" value="${pass}"/><br><sup>Password (8-16 characters)</sup><br><br>
    <input type="password" name="confirm" /><br><sup>Confirm Password</sup><br><br>
    <input type="text" name="em" value="${email}"/><br><sup>E-mail</sup><br><br>
    <input type="submit" value="Submit Profile Edit" name="sub">  <input type="submit" value="Cancel" name="sub">  
</form>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

