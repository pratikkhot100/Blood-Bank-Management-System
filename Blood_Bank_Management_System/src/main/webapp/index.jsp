<head>
  <title>Blood Donation Portal</title> <!-- Page title -->

  <link rel="stylesheet" href="style.css" type="text/css" media="screen">

  <style>
    .mySlides {
      display: none;
    }

    input[type="text"], input[type="mail"] {
      border: none;
      background: ;
      height: 50px;
      font-size: 16px;
      margin-left: 2%;
      padding: 15px;
    }

    .header {
      overflow: hidden;
      background-color: Gery;
      padding: 10px 10px; /* smaller padding */
      font-family: Arial, sans-serif;
    }

    .header .logo {
      height: 40px; /* smaller logo */
      vertical-align: middle;
    }

    .header-right {
      float: right;
    }

    .header-right a {
      display: inline-block;
      color: black;
      text-align: center;
      padding: 10px 14px;
      text-decoration: none;
      font-size: 14px; /* smaller font */
    }

    .header-right a:hover {
      background-color: ;
      color: black;
    }
   
  .form-container {
    max-width: 600px;
    margin: 40px auto;
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
    text-align: center;
  }

  .form-container input[type="text"],
  .form-container input[type="mail"] {
    width: 90%;
    padding: 15px;
    margin: 10px auto;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 12px;
    outline: none;
    transition: all 0.3s ease;
    background-color: #f5f5f5;
  }

  .form-container input:focus {
    border-color: #b30000;
    box-shadow: 0 0 8px rgba(179, 0, 0, 0.3);
    background-color: #fff;
  }

  .form-container .button1 {
    background-color: #b30000;
    color: white;
    padding: 14px 35px;
    border: none;
    border-radius: 30px;
    font-size: 16px;
    margin-top: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s;
  }

  .form-container .button1:hover {
    background-color: #e60000;
    transform: scale(1.05);
  }

  @media screen and (max-width: 600px) {
    .form-container {
      width: 90%;
      padding: 20px;
    }

    .form-container input {
      width: 100%;
    }
  }
  </style>
</head>

<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <% 
  String msg=request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <center><font color="red" size="5">From Submitted successfully. You Will get notified within 24 hours.</font></center>
	  <%
	  }
	  %>
	  <% 
  if("invalid".equals(msg)){
	  %>
	  <center><font color="red" size="5">Invalid Data Try Again !</font></center>
	  <%
	  }
	  %>
  <center><h1>Enter Your Details to Request for Blood</h1></center>
  <form action="indexFormAction.jsp" method="post">
  <div class="form-container">
    <h2 style="color:#b30000;">Request Blood</h2>
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
    <input type="mail" name="email" placeholder="Enter Email Address" required>
    <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
    <button class="button1"><span>Submit</span></button>
  </div>
</form>
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center>All Right Reserved @ Pratik Khot 2025  </center></h3>

</body>
</html>

