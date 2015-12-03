<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Paperboy Login</title>

<head>
<link rel="stylesheet" type="text/css" href="header.css">
</head>

<body>
<div id="header"></div>
<div id="nav">
</div>

<div><h2>Employee Web Portal Login</h2>
<span id="error">${errorMsg}<br></span>
<form action="LoginSrvlt" method="post">	
	<input type="text" name="name"/><br><sup>Username</sup><br><br>       
    <input type="password" name="pass"/><br><sup>Password</sup><br><br>
    <input type="submit" value="Login">            
</form>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>