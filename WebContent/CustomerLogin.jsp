<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
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
  <a href="CustomerLogin.jsp" class="nav-item" >Login</a>
  <a href="<%=request.getContextPath()%>/DisplayComplain"  class="nav-item" >My Complains</a>
  <a href="AboutUs.jsp" class="nav-item" >About Us</a>
  <a href="ContactUs.jsp" class="nav-item" >Contact</a>
  <span class="nav-indicator"></span>
</nav>
</ul>
</br>

<div class="loghead3">
<h3>Log in to your Account</h3>
</div>

<form action = "login" method = "post">

<font color="White">
<div class="login">
NIC:<br>
<input type="text" placeholder="NIC" name = "NIC" required><br>

Password:<br>
<input type="password"  id="password" name="password" pattern=".{6,}" placeholder="Password" required>


<button class = "button logbtn" input type="submit" Id="btn" >Login</button>
</div>
</form>

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