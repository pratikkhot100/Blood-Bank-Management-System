<%@include file="header.html"%>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
/* Reset default margin and padding */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: #f4f4f4;
}

.carousel-container {
    max-width: 100%;
    margin: 0 auto;
    overflow: hidden;
    position: relative;
}

.mySlides {
    width: 100%;
    height: 550px;
    object-fit: cover;
    display: none;
}

footer {
    margin-top: 40px;
    padding: 20px 0;
    background-color: #333;
    color: #fff;
    text-align: center;
    font-size: 16px;
}
</style>
</head>

<body>

<div class="carousel-container">
    <img class="mySlides" src="welcome.jpg">
    <img class="mySlides" src="admin.PNG">
    <img class="mySlides" src="slide1.jpg">
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
    if (myIndex > x.length) { myIndex = 1 }    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

<footer>
    All Right Reserved @ Pratik Khot 2025
</footer>

</body>
</html>
