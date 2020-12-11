<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="/CustomerHelpDesk/design.css"type="text/css">
</head>
<body>
<div class = "anim"></div>
<img class="logo" src = "images/logo.png" width="450">
<img class="title" src = "images/Head.png" width="400">
<div class="head2">
<h2>Beyond the future</h2>
</div>

 <script type="text/javascript" src="js/reg.js"></script>
 
<ul>

<nav class="nav">
  <a href="#" class="nav-item" >Home</a>
  <a href="CustomerLogin.jsp" class="nav-item" >Login</a>
  <a href="#" class="nav-item" >My complains</a>
  <a href="AboutUs.jsp" class="nav-item" >AboutUs</a>
  <a href="ContactUs.jsp" class="nav-item" >Contact</a>
  <span class="nav-indicator"></span>
</nav>
  
</ul>
</br>





<div class="head3">
<h3>Create your account</h3>
</div>

<div class = "ask">
 <p>Already have an account? <a href = "CustomerLogin.jsp" id="link1">Sign in</a></p>
</div>

<form action = "register" method = "post">

<font color="white">
<div class="part1">
User Name:<br>
<input type="text" placeholder="User name" name = "username" required><br>
NIC Number:<br>
<input type = "text"  placeholder = "XXXXXXXXXV" name = "NIC" ID = "NIC" maxlength="10" pattern="[\d{9}$]+V" required><br>
Connection Number:<br>
<input type="text" placeholder="Connection No" name = "connectionNo" maxlength="10" required><br>
</div>


<div class = "part2">
Email:<br>
<input type="email" id="myemail" placeholder="example@gmail.com" name = "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required><br>
Password:<br>
<input type="password" id="password" name="password" pattern=".{6,}" placeholder="Password" required>
<p>password must be at least 6 characters long</p>


<a href ="terms.html" id="link3">Terms and conditions</a>
<br>
<a href ="Privacy.jsp"id="link2">Accept privacy and policy</a>: <input type="checkbox" id="check" autocomplete = "off"  onclick="checkdata()">
<br><br>
<div class="submit">
<button class = "button regbtn" input type="submit" Id="regbtn" style="display:none">Sign Up</button>
</div>
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