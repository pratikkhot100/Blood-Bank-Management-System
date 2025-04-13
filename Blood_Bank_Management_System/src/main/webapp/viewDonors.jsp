<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%@ include file="header.html" %>
<html>
<head>
<title>List Of Donors</title>
    <link rel="stylesheet" href="style.css">
    <style>
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .btn {
            padding: 6px 12px;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }
        .update-btn { background-color: #28a745; }
        .delete-btn { background-color: #dc3545; }
    </style>
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete this donor?");
        }
    </script>
</head>
<body>

<h2 style="text-align:center;">List of Donors</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
         <th>Father Name</th>
          <th>Mother Name</th>
        <th>Mobile</th>
         <th>Gender</th>
          <th>Email</th>
        <th>Blood Group</th>
        <th>Address</th>
         <th>Actions</th>
    </tr>

<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM donor");

    while(rs.next()) {
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("father") %></td>
    <td><%= rs.getString("mother") %></td>
    <td><%= rs.getString("mobilenumber") %></td>
    <td><%= rs.getString("gender") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("bloodgroup") %></td>
    <td><%= rs.getString("address") %></td>
    <td>
        <a href="updateDonor.jsp?id=<%= rs.getInt("id") %>" class="btn update-btn">Update</a>
        <!-- Use JavaScript confirmDelete function for the delete link --><br><br>
        <a href="deleteDonor.jsp?id=<%= rs.getInt("id") %>" class="btn delete-btn" onclick="return confirmDelete()">Delete</a>
    </td>
</tr>
<%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</table>
<hr>
<h3><center>All Right Reserved @ Pratik Khot 2025  </center></h3>
</body>
</html>
