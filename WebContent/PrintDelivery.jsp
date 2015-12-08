<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Printing Delivery</title>

<head>
<link rel="stylesheet" type="text/css" href="header.css">
<script type="text/javascript">
var routeButtons = function() {
	var dButton = document.getElementById("driver_buttons");
	dButton="<form>";
	    for (var j = 0 ; j < valueOf("${num}") ; j++) {

	      dButton += "<input type='submit' value='"+ j +"' name='butt'><br>";
	    }
	    dButton+="</form>";
}
</script>
</head>

<body >
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
<span id="error">${errorMsg}</span>
<form action="PrintSrvlt" method="post">
There are ${cLength} locations to visit today.<br>
<input type="number" value="1" name="numDriver">
<input type="submit" value="Delivery Report" name="sub"><br>How Many Drivers?<br><br>

</form>
${butt}<br>
</div>

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

