<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Add</title>

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
<h2>Add a Customer</h2><br>
${Msg}<br>
<form action="CustAddSrvlt" method="post">
	
	<input type="text" name="first"/><br><sup>First Name</sup><p>      
    <input type="text" name="last"/><br><sup>Last Name</sup><p>    
    <input type="text" name="add1"/><br><sup>Address Line 1</sup><p>       
    <input type="text" name="add2"/><br><sup>Address Line 2</sup><p>    
    <input type="text" name="city"/><br><sup>City</sup><p>    
    <input type="text" name="state"/><br><sup>State</sup><p>    
    <input type="text" name="zip"/><br><sup>Zip Code</sup><p>        
    <input type="text" name="phone"/><br><sup>Phone</sup><p>    
    	
    <input type="submit" value="Add">     
    </form>   
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

