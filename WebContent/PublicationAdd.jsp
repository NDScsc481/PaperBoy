<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
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
  <li><a class="active" href="PublicationCenter.jsp">Publications</a></li>
  <li><a href="Printing.jsp">Printing</a></li>
  <ul style="float:right;list-style-type:none;">
  <li><a href="EmployeeHome.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
  <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>

<div id="bckgrnd">
<div id="section">
<h2>Add Publication</h2><br>
${Msg}<br>
<form action="PubAddSrvlt" method="post">
	
	<input type="text" name="title"/><br><sup>Title</sup><p>
	<input type="text" name="genre"/><br><sup>Genre</sup><p>
    <input type="text" name="price"/><br><sup>Price</sup><p>
    Sun<input type="checkbox" name="day1" value="Sun"> | 
    Mon<input type="checkbox" name="day2" value="Mon"> |
    Tue<input type="checkbox" name="day3" value="Tue"> |
    Wed<input type="checkbox" name="day4" value="Wed"> |
    Thu<input type="checkbox" name="day5" value="Thu"> |
    Fri<input type="checkbox" name="day6" value="Fri"> |
    Sat<input type="checkbox" name="day7" value="Sat"> <p>
    <input type="radio" name="freq" value="daily" checked> Daily<br>
    <input type="radio" name="freq" value="weekly"> Weekly<br>
    <input type="radio" name="freq" value="monthly"> Monthly<p>
    	
    <input type="submit" value="Add">     
    </form> 
</div>
</div>	

<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

