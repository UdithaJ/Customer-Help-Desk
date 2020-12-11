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
<h3>Update Complain</h3>
</div>


<%

String referenceNo = request.getParameter("referenceNo");
String connectionNo = request.getParameter("connectionNo");
String description = request.getParameter("description");
String status = request.getParameter("status");
String contact = request.getParameter("Contact");
String NIC = request.getParameter("NIC");
String type = request.getParameter("Type");

%>


<form method="post" action="UpdateComplain">
<font color="white">

<div class = "part1">
Reference No:<br>
<input type="text" name="refno" value="<%=referenceNo%>" readonly>
<br>
NIC:<br>
<input type="text" name="NIC" value="<%=NIC%>" readonly>
<br>
Connection No:<br>
<input type="text" name="connectionNo" value="<%=connectionNo%>">
<br>
Contact No:<br>
<input type="text" name="contactNo" value="<%=contact%>">
<br>
</div>

<div class = "part2">
Type:<br>
<select  name ="type"  required >
<option value="Broadband">Broadband</option>
<option value="TV">TV</option>
<option value="Mobile">Mobile</option>
</select><br>
Description:<br>
<textarea rows="3" cols="20" name="des" class ="textarea description" > <%=description%>
</textarea>
<br>
<br>
<button class = "button confirm1" input type="submit" id = "updatebtn" >Update</button>
<button type ="reset" class  ="button cancelupdate"  onclick="goBack()">Cancel</button>
</div>
<br><br>
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