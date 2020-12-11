<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Update Complains</title>
<link rel="stylesheet" href="/CustomerHelpDesk/design.css"type="text/css">
</head>
<body>
<script type="text/javascript" src="js/reg.js"></script>

<div class = "anim"></div>
<img class="logo" src = "images/logo.png" width="450">
<img class="title" src = "images/Head.png" width="400">
<div class="head2">
<h2>Beyond the future</h2>
</div>
<hr/>
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





<div class="delhead3">
<h3>Are you sure you want to Delete this Complain ?</h3>
</div>


<%

String referenceNo = request.getParameter("referenceNo");
String connectionNo = request.getParameter("connectionNo");
String description = request.getParameter("description");
String status = request.getParameter("status");
String contact = request.getParameter("Contact");
String NIC = request.getParameter("NIC");
String type = request.getParameter("Type");
String date = request.getParameter("date");

%>


<form method="post" action="DeleteComplain">
<font color="white">

<div class = "part1">

Reference No:<br>
<input type="text delref" class  ="textbox delref" name="refno" id= "refno" value="<%=referenceNo%>" readonly>
<textarea readonly   rows="20" cols="20">
NIC:<%=NIC%>

Connection No:<%=connectionNo%>

Type:<%=type%>

Description:<%=description%>

Contact No:<%=contact%>

Complain Date:<%=date%>
</textarea>

<button class = "button confirm2" input type="submit" id = "deletebtn" >Confirm Delete</button>
<button type ="reset" class  ="button cancel"  onclick="goBack()">Cancel</button>
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