<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
<link rel="stylesheet" href="/CustomerHelpDesk/design.css"type="text/css">
</head>
<body>
<div class = "anim"></div>
<img class="logo" src = "images/logo.png" width="450">
<img class="title" src = "images/Head.png" width="400">
<div class="head2">
<h2>Beyond the future</h2>
</div>

<ul>

<nav class="nav">
  <a href="#" class="nav-item" >Home</a>
  <a href="<%=request.getContextPath()%>/LogoutCustomer" class="nav-item" >Logout</a>
  <a href="<%=request.getContextPath()%>/DisplayComplain"  class="nav-item" >My Complains</a>
  <a href="AboutUs.jsp" class="nav-item" >About Us</a>
  <a href="ContactUs.jsp" class="nav-item" >Contact</a>
  <span class="nav-indicator"></span>
</nav>
  
  
</ul>
</br>

<div class="head3">
<h3>Feel free to reach us</h3>
</div>

<div class = "privacy">
<p>Gmail: evoquecustomercare@gmail.com</p> 
<p>Hotline: </p>
<p>011 222 333 4</p>
<p>011 222 444 5</p>
</div>
<footer > 
 <a href ="https://www.facebook.com" > <img class="fb" src = "images/fb.png"  width="35"></a>
 <a href ="https://www.gmail.com" ><img class="gmail" src = "images/gmail.png" width="35"></a>
 <div class = "follow">
 <p>Follow us</p>
 </div>
  <div class = "reach">
 <p>Reach us</p>
 </div>
 <div class = "footertext">
<p> Copyright 2019 - Evoque.  All rights reserved.</p>
</div>	
</footer>
</body>
</html>