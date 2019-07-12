<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechM IMS | Security Questions</title>
<link rel="stylesheet" href="static/register.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body >

<% session.setAttribute("username","TechM Employee");
session.setAttribute("loggedin","no");
 %>
        <%@include file="header.jsp" %>
       <% if(session.getAttribute("invalid")=="true"){
	out.println("<div class='alert alert-danger alert-dismissible fade show' role='alert'>  <strong>Wrong Answers!</strong>  <button type='button' class='close' data-dismiss='alert' aria-label='Close'> <span aria-hidden='true'>&times;</span> </button></div>");
	 session.setAttribute("invalid", null);
	 
 } %>

<div class="card shadow1 bg-light" style=" margin-top: 55px;max-width: 590px;padding:7px;">



<!-- <h2 style="text-align:center ; color: #D34B2E">REGISTRATION FORM</h2>-->



<form id='register-form' action="dbfsec.jsp" method='post' class="forme">

<header style="margin-bottom:20px;margin-top:20px;">
<h4>Answer the following security questions</h4>
</header>

<input type="text" name="id" placeholder="Employee ID" required class="txt" style="margin-bottom: 10px;">
  <input type="text" name="q1" placeholder="What is the name of your bestfriend?" required class="txt" style="margin-bottom: 10px;">

  <input type="text" name="q2" placeholder="What is your favourite holiday destination?" required class="txt" style="margin-bottom: 10px;">
  
 



  <button type='submit' class="myButton" style="margin-left: 150px;">Next</button>



</form>


</div>



  </body>
</html>