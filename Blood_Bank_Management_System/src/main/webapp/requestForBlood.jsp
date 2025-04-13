<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>
<head>
 <title>Request For Blood</title>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}
.btn {
    padding: 8px 16px;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    display: inline-block;
    text-align: center;
}

.btn-green {
    background-color: #28a745;
}

.btn-green:hover {
    background-color: #218838;
}

.btn-red {
    background-color: #dc3545;
}

.btn-red:hover {
    background-color: #c82333;
}
#customers td {
    text-align: center;
}

</style>
</head>
<body>
<br>
<center>
<table id="customers">
<tr>
  <th>Name</th>
  <th>Mobile Number</th>
  <th>Email</th>
  <th>Blood Group</th>
  <th>Done</th>
  <th>Delete</th>
</tr>

<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM bloodrequest WHERE status='pending'");
    while (rs.next()) {
%>
<tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><a href="requestForBloodDone.jsp?mobilenumber=<%= rs.getString(2) %>" class="btn btn-green">Done</a></td>
    <td><a href="requestForBloodDelete.jsp?mobilenumber=<%= rs.getString(2) %>" class="btn btn-red">Delete</a></td>
    
</tr>
<%
    }
} catch (Exception e) {
    out.println("<tr><td colspan='6' style='color:red;'>Error: " + e.getMessage() + "</td></tr>");
    e.printStackTrace(); // Optional for development
}
%>
</table>
</center>

<br><br><br><br>
<h3><center>All Rights Reserved @ Pratik Khot 2025</center></h3>
</body>
</html>
