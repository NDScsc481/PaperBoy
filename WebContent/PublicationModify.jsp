<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Publications - Modify</title>
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
<h2>Publication Information</h2>
<span id="message">${msg}<br></span>
<form action="PubEditSrvlt" method="post">
	<table>
		<tr>
			<td>Publication ID: </td>
			<td>${PID}</td>
		</tr>
		<tr>
			<td>Publication Name: </td>
			<td>${pName}</td>
		</tr>
		<tr>
			<td>Genre: </td>
    		<td>${genre}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Name" name = "subm"></td></tr>
	</table>
	<br>
	<table>
		<tr>
			<td>Price: </td>
    		<td>${price}</td>
  		</tr>
  		<tr>
			<td>Frequency: </td>
    		<td>${frequency}</td>
  		</tr>
  		  <tr>
			<td>Delivery Days: </td>
    		<td>${ddays}</td>
  		</tr>
  		<tr>
			<td>Status: </td>
    		<td>${status}</td>
  		</tr>
  		<tr><td></td><td></td><td style="text-align: right"><input type="submit" value="Edit Number" name = "subm"></td></tr>
	</table>
	<br>
	<input type="submit" value="Back to search" name="subm">
</form>
</div>
<script type="text/javascript">
	function replace(){
	
	}

</script>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

