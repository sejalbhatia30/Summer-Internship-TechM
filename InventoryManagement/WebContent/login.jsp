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
	response.sendRedirect("custadd.jsp");
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



<form id='register-form' action="dblogin.jsp" method='post' class="forme">

<div class="imgcontainer">

 <img src="data:image/png;base64,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" alt="Avatar" class="person">

  </div>



  <input type="text" name="userid" placeholder="Employee ID" required class="txt" style="margin-bottom: 5px;" >



  


  <input type="password" name="password" placeholder="Password" required class="txt" style="margin-bottom: 5px;">



  



  <button type='submit' class="myButton" style="margin-left: 150px;">Login</button>



</form>

<div style=" display: flex;justify-content: center; padding-right: 15px; padding-left: 15px;"  >

 <label style="margin-right: 10px; padding-top:15px;">New User ? </label>

<form method="post" action="register.jsp">

<button  type="submit" class="myButton" style="width: 100px; padding-right: 0px; padding-left: 0px; margin-right: 0px; margin-left: 0px;margin-top:7px;">Register</button>

</form>

</div>

</div>



  </body>
</html>