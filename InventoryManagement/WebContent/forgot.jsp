<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechM IMS | Login</title>
<link rel="stylesheet" href="static/login.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body>

<% if(session.getAttribute("loggedin")=="yes") 

{
	response.sendRedirect("http://localhost:8080/InventoryManagement/profile");
}

%>
<%
if(session.getAttribute("loggedin")=="no")
{
	session.setAttribute("username","TechM Employee");
}

%>


        <%@include file="header.jsp" %>
       
 

<div class="card shadow1 bg-light " style=" margin-top: 50px;max-width: 590px;padding:7px;">



<!-- <h2 style="text-align:center ; color: #D34B2E">REGISTRATION FORM</h2>-->



<form id='register-form' action="dbforgot.jsp" method='post' class="forme">

<header style="text-align:center;margin:15px;">
<h3>Create new password</h3>
</header>
 <input type="text" name="userid" placeholder="Employee ID" required class="txt" style="margin-bottom: 5px;" >

  <input type="password" name="pass" placeholder="Password" required class="txt" style="margin-bottom: 5px;" >



  


  <input type="password" name="cpass" placeholder="Confirm Password" required class="txt" style="margin-bottom: 5px;">



  



  <button type='submit' class="myButton" style="margin-left: 150px;">Verify </button>





</div>

</div>



  </body>
</html>