<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("SELECT * FROM donor WHERE id=?");
ps.setInt(1, id);
ResultSet rs = ps.executeQuery();
rs.next();
%>

<html>
<head>
<title>Update Donor</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            overflow-x: hidden; /* Prevent horizontal scroll */
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        .container {
            width: 60%;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            /* Remove slide animation */
        }

        input[type="text"], input[type="email"], input[type="number"], select {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            background-color: #f9f9f9;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: inline-block;
            color: #555;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        button, .cancel-btn a {
            padding: 15px;
            width: 48%;
            font-size: 16px;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            color: white;
        }

        /* Update button */
        button {
            background-color: #28a745;
            border: none;
        }

        button:hover {
            background-color: #218838;
        }

        /* Cancel button */
        .cancel-btn a {
            background-color: #dc3545;
        }

        .cancel-btn a:hover {
            background-color: #c82333;
        }

        /* Centered text */
        .center-text {
            text-align: center;
        }

        /* Optional: Use responsive layout to ensure it adjusts on different screen sizes */
        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
            }
        }

    </style>
</head>

<body>

<div class="container">
    <h2>Update Donor</h2>
    <form action="updateDonorAction.jsp" method="post">
        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
        
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="<%= rs.getString("name") %>" required><br>
        
        <label for="father">Father Name</label>
        <input type="text" id="father" name="father" value="<%= rs.getString("father") %>" required><br>

        <label for="mother">Mother Name</label>
        <input type="text" id="mother" name="mother" value="<%= rs.getString("mother") %>" required><br>

        <label for="mobilenumber">Mobile Number</label>
        <input type="text" id="mobilenumber" name="mobilenumber" value="<%= rs.getString("mobilenumber") %>" required><br>

        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
            <option value="Male" <%= "Male".equals(rs.getString("gender")) ? "selected" : "" %>>Male</option>
            <option value="Female" <%= "Female".equals(rs.getString("gender")) ? "selected" : "" %>>Female</option>
            <option value="Other" <%= "Other".equals(rs.getString("gender")) ? "selected" : "" %>>Other</option>
        </select><br>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= rs.getString("email") %>" required><br>

        <label for="bloodgroup">Blood Group</label>
        <select id="bloodgroup" name="bloodgroup" required>
            <option value="A+" <%= "A+".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>A+</option>
            <option value="A-" <%= "A-".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>A-</option>
            <option value="B+" <%= "B+".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>B+</option>
            <option value="B-" <%= "B-".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>B-</option>
            <option value="AB+" <%= "AB+".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>AB+</option>
            <option value="AB-" <%= "AB-".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>AB-</option>
            <option value="O+" <%= "O+".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>O+</option>
            <option value="O-" <%= "O-".equals(rs.getString("bloodgroup")) ? "selected" : "" %>>O-</option>
        </select><br>

        <label for="address">Address</label>
        <input type="text" id="address" name="address" value="<%= rs.getString("address") %>" required><br>
        
        <div class="button-container">
            <!-- Update Button -->
            <button type="submit">Update</button>
          
            <!-- Cancel Button -->
            <button type="button" onclick="window.location.href='viewDonors.jsp'" style="background:red;">Cancel</button>
        </div>
    </form>
</div>

<br>
<hr>
<h3><center>All Right Reserved @ Pratik Khot 2025  </center></h3>
</body>
</html>
