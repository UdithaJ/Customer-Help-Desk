
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report a problem</title>
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
  <a href="<%=request.getContextPath()%>/DisplayComplain" class="nav-item" >My complains</a>
  <a href="AboutUs.jsp" class="nav-item" >About Us</a>
  <a href="ContactUs.jsp" class="nav-item" >Contact</a>
  <span class="nav-indicator"></span>
</nav>
</ul>
</br>


 <div class="reporthead3">
<h3>Report a problem</h3>
</div>
	    

<div class = "user">
<c:forEach var="cus" items="${cusDetails}">
<p>Logged as ${cus.username}</p>
<p>User Id: ${cus.userId}</p>
	</c:forEach>
</div>

<%String NIC = request.getParameter("NIC");%>

<form action = "AddComplain" method = "post">

<font color="white">
<div class="part1">

NIC Number:<br>
<input type = "text" value="<%=NIC%>" readonly placeholder = "XXXXXXXXXV" name = "NIC" maxlength="10" pattern="[\d{9}$]+V" required><br>
Connection Number:<br>
<input type="text" placeholder="Connection No" name = "connectionNo" maxlength="10" required><br>
Type:<br>
<select  name ="type" required >
<option value="Broadband">Broadband</option>
<option value="TV">TV</option>
<option value="Mobile">Mobile</option>
</select><br>
</div>
<div class="part2">
Description:<br>
<textarea name = "des" class ="textarea description" placeholder="Should be less than 50 characters" rows="2" cols="10">
</textarea>
Contact Number:<br>
<input type="text" name="contact"  placeholder="contact Number" required>
</div>
<div class="Report">
<button class = "button report" input type="submit" Id="reportbtn" >Report</button>
</div>
</form>
<form action = "DisplayComplain" method = "get">
<div class = "see">
<button class = "button btnsee" input type="submit" Id="checkbtn" >See my complains</button>
</div>
</form>

<form action = "LogoutCustomer" method = "get">
<div class = "logout">
<button class = "button btnlogout" input type="submit" Id="logout" >Logout</button>
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