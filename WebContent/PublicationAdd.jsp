<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Publications - Add Publication</title>
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
<h2>Add Publication</h2><br>
${Msg}<br>
<form action="PubAddSrvlt" method="post">
	
	<input type="text" name="title"/><br><sup>Title</sup><p>
	<input type="text" name="genre"/><br><sup>Genre</sup><p>
    <input type="text" name="price"/><br><sup>Price</sup><p>
    <select onchange="displayType()" name="freq" id="freq">
    	<option value="daily"> Daily </option>
    	<option value="weekly"> Weekly</option>
        <option value="monthly"> Monthly</option>
    </select>
    <fieldset name = "days" id="daycb" hidden=true>
    <legend> Delivery Days</legend>
		Sun<input type="radio" name="day" value="1"> | 
	    Mon<input type="radio" name="day" value="2"> |
	    Tue<input type="radio" name="day" value="3"> |
	    Wed<input type="radio" name="day" value="4"> |
	    Thu<input type="radio" name="day" value="5"> |
	    Fri<input type="radio" name="day" value="6"> |
	    Sat<input type="radio" name="day" value="7"> <p>
    </fieldset>
    <input type="text" name="mday" id="monthtb" placeholder="Start Date" hidden=true>
    <br>
    <input type="submit" value="Add">     
    </form> 
</div>

<script type="text/javascript">
	window.displayType = function(){
		if(document.getElementById("freq").selectedIndex == "0"){
			document.getElementById('daycb').hidden = true;
			document.getElementById('monthtb').hidden = true;
		}else if(document.getElementById("freq").selectedIndex == "1"){
			document.getElementById('daycb').hidden = false;
			document.getElementById('monthtb').hidden = true;
		}else{
			document.getElementById('daycb').hidden = true;
			document.getElementById('monthtb').hidden = false;
		}
	}
</script>
<div id="footer">
Copyright © Team One - CSC 481
</div>

</body>
</html>

