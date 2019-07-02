<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechM IMS | Register</title>
<link rel="stylesheet" href="static/register.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>

<body >

<% session.setAttribute("username","TechM Employee");
session.setAttribute("loggedin","no");
 %>
        <%@include file="header.jsp" %>
       

<div class="card shadow1 bg-light" style=" margin-top: 15px;max-width: 590px;padding:7px;">



<!-- <h2 style="text-align:center ; color: #D34B2E">REGISTRATION FORM</h2>-->



<form id='register-form' action="dbregister.jsp" method='post' class="forme">

<div class="imgcontainer">

 <img src="data:image/png;base64,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" alt="Avatar" class="person">

  </div>



  <input type="text" name="user" placeholder="Username" required class="txt" style="margin-bottom: 5px;">

  <input type="text" name="id" placeholder="Employee ID" required class="txt" style="margin-bottom: 5px;">
  
  <input type="text" name="loc" placeholder="Location" required class="txt" style="margin-bottom: 5px;">
  

  <input type="email" name="email" placeholder="Email" required class="txt" style="margin-bottom: 5px;">

 



  <input type="password" name="password" placeholder="Password" required class="txt" style="margin-bottom: 5px;">



  



  <button type='submit' class="myButton" style="margin-left: 150px;">Register</button>



</form>

<div style=" display: flex;justify-content: center; padding-right: 15px; padding-left: 15px;"  >

 <label style="margin-right: 10px; padding-top:15px;">Already registered ? </label>

<form method="get" action="login.jsp">

<button  type="submit" class="myButton" style="width: 100px; padding-right: 0px; padding-left: 0px; margin-right: 0px; margin-left: 0px;margin-top:7px;">Login</button>

</form>

</div>

</div>



  </body>
</html>