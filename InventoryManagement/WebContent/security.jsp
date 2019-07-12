<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechM IMS | Security Questions</title>
<link rel="stylesheet" href="static/register.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>

<body >

<% session.setAttribute("username","TechM Employee");
session.setAttribute("loggedin","no");
 %>
        <%@include file="header.jsp" %>
       

<div class="card shadow1 bg-light" style=" margin-top: 55px;max-width: 590px;padding:7px;">



<!-- <h2 style="text-align:center ; color: #D34B2E">REGISTRATION FORM</h2>-->



<form id='register-form' action="dbsecurity.jsp" method='post' class="forme">

<header style="margin-bottom:20px;margin-top:20px;">
<h4>Answer the following security questions</h4>
</header>


  <input type="text" name="q1" placeholder="What is the name of your bestfriend?" required class="txt" style="margin-bottom: 10px;">

  <input type="text" name="q2" placeholder="What is your favourite holiday destination?" required class="txt" style="margin-bottom: 10px;">
  
 



  <button type='submit' class="myButton" style="margin-left: 150px;">Register</button>



</form>


</div>



  </body>
</html>