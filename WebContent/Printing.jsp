<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
<title>Employee Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
=======
<title>Printing Options</title>

>>>>>>> master
<head>
<link rel="stylesheet" type="text/css" href="header.css">
</head>

<body>
<div id="header">
</div>

<div id="nav">
<ul>
  <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>  
  <li><a href="CustomerCenter.jsp">Customers</a></li>
  <li><a href="PublicationCenter.jsp">Publications</a></li>
  <li><a class="active" href="Printing.jsp">Printing</a></li>
  <ul style="float:right;list-style-type:none;">
  <li><a href="EmployeeHome.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
  <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>

<div id="bckgrnd">
<div id="section">

<h1>Printing</h1>

<<<<<<< HEAD
<form action="PrintReportSrvlt" method="get">
<input type="submit" value="Delivery Report" ><br> Print the driver's delivery list<br><br>
</form>   

<form action="PrintFullSrvlt" method="get">
<input type="submit" value="Full Summary"><br> Print today's full list of deliveries<br><br>
=======
<form action="PrintSrvlt" method="post">
<input type="submit" value="Delivery Report" name="sub"><br> Print the driver's delivery list<br><br>
<input type="submit" value="Full Summary" name="sub"><br> Print today's full list of deliveries<br><br>
>>>>>>> master
</form> 

</div>
</div>
<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

