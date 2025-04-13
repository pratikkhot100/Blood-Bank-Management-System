<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Login</title> 
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
        /* Background image for body */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('your-background-image.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        /* Small size navbar */
        .header {
            overflow: hidden;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
            padding: 2px 2px;
        }

        .header a.logo img {
            height: 40px; /* Small logo size */
            vertical-align: middle;
        }

        .header-right {
            float: right;
        }

        .header-right a {
            color: white;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 14px;
            display: inline-block;
        }

        .header-right a:hover {
            background-color: #ddd;
            color: black;
        }

        .header-right a.active {
            background-color: #04AA6D;
            color: white;
        }

        /* Styled input fields */
        input[type="text"], input[type="password"], input[type="submit"] {
            border: none;
            background: silver;
            height: 50px;
            font-size: 16px;
            margin-left: 35%;
            padding: 15px;
            width: 33%;
            border-radius: 25px;
        }

        .button {
            padding: 12px 30px;
            background-color: #04AA6D;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            color: white;
            cursor: pointer;
        }

        .button:hover {
            background-color: #038d5e;
        }

        h3 {
            color: white;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="#default" class="logo"><img class="logo" src="Logo1.png" alt="Logo"></a>
        <div class="header-right">
            <a href="index.jsp">Home</a>
            <a class="active" href="adminLogin.jsp">Admin Login</a>
        </div>
    </div>

    <div class="container">
        <br><br>
        <%
            String msg = request.getParameter("msg");
            if("invalid".equals(msg)){
        %>
        <center><font color="red" size="5">Invalid Username and Password</font></center>
        <%
            }
        %>
        <center><h1>Admin Login</h1></center><br>
        <form action="adminLoginAction.jsp" method="post">
            <div class="form-group">
                <center><h2 style="color:black;">Username</h2></center>
                <input type="text" placeholder="Enter Username" name="username" required>
                <center><h2 style="color:black;">Password</h2></center>
                <input type="password" placeholder="Enter Password" name="password" required>
                <center><button type="submit" class="button">Submit</button></center>
            </div>
        </form>
    </div>
    <br><br><br><br><br>
    <hr style="color:black;">
    <h3 style="color:black;"><center>All Right Reserved @ Pratik Khot 2025</center></h3>
</body>
</html>
