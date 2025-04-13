<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<title>Add New Donor</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<center><font color="red" size="5">Successfully Save</font></center>
	<%
	}
     %>
	<%
	if("invalid".equals(msg)){
		%>
		<center><font color="red" size="5">Something Went Wrong! Try Again !</font></center>
		<%
		}
	     %>
<div class="container">
<center><h1>Add New Donor</h1></center>
<form action="addNewDonorAction.jsp" method="post">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name" required>
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father" required>
<hr>
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother" requied>
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber" required>
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="Enter Address" name="address">
<br>
<center><button type="submit" class="button">Save</button></center>
</form>
  </div>

<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ Pratik Khot 2025  </center></h3>

</body>
</html>