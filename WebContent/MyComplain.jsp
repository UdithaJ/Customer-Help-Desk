

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html>


<html>
<head>

<meta charset="ISO-8859-1">
<title>My Complains</title>
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
<h3>My Complains</h3>
</div>


<c:choose>
<c:when  test="${ empty comDetails}">
<div class = "empty">
<p>No Complains</p>
</div>
</c:when>

<c:otherwise>
<div class = table>

<table >
<tr>
<th>Reference No</th>
<th>Connection No</th>
<th>Description</th>
<th>Contact No</th>
<th>State</th>
<th>Type</th>
<th>NIC</th>
<th>Date</th>

</tr>
</div>
	<c:forEach var="com" items="${comDetails}">
	
	
		
	<c:set var = "referenceNo" value = "${com.referenceNo}"/>
	<c:set var = "ConnectionNo" value = "${com.connectionNo}"/>
	<c:set var = "Description" value = "${com.description}"/>
	<c:set var = "Contact" value = "${com.contactNo}"/>
	<c:set var = "status" value = "${com.status}"/>
	<c:set var = "NIC" value = "${com.NIC}"/>
	<c:set var = "Type" value = "${com.type}"/>
	<c:set var = "date" value = "${com.date}"/>
	
	
	
	<tr>
	
	<td>${com.referenceNo}</td>
	<td>${com.connectionNo}</td>
	<td>${com.description}</td>
	<td>${com.contactNo}</td>
	<td>${com.status}</td>
	<td>${com.type}</td>
    <td>${com.NIC}</td>
     <td>${com.date}</td>
   
     


	
	<c:url value = "UpdateComplain.jsp" var = "comUpdate">
	<c:param name = "referenceNo" value =  "${referenceNo}"/>
 	<c:param name = "connectionNo" value =  "${ConnectionNo}"/>
 	<c:param name = "description" value =  "${Description}"/>
 	<c:param name = "status" value =  "${status}"/>
 	<c:param name = "Contact" value =  "${Contact}"/>
 	<c:param name = "Type" value =  "${Type}"/>
 	<c:param name = "NIC" value =  "${NIC}"/>

 	</c:url>
 	
 	<c:url value = "DeleteComplain.jsp" var = "comDelete">
	<c:param name = "referenceNo" value =  "${referenceNo}"/>
 	<c:param name = "connectionNo" value =  "${ConnectionNo}"/>
 	<c:param name = "description" value =  "${Description}"/>
 	<c:param name = "status" value =  "${status}"/>
 	<c:param name = "Contact" value =  "${Contact}"/>
 	<c:param name = "Type" value =  "${Type}"/>
 	<c:param name = "NIC" value =  "${NIC}"/>
 	<c:param name = "date" value =  "${date}"/>
 	</c:url>

   <td><a href="${comUpdate}"><input type = "button" button class = "button update" id = "update" name="update" value = "Update"></a></td>
   <td><a href="${comDelete}"><input type = "button" button class = "button delete" id = "btn2" name="delete" value = "Delete"></a></td>
   </tr>
		
	
	
	</c:forEach>
	
	
	</table>
	</c:otherwise>
	</c:choose>
	<br><br><br>
	

	
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