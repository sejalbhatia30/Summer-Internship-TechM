<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Device</title>
<style>
.card {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 15px;
	padding-right: 15px;
	background: #fff;
	/*  max-width: 360px;*/
	/*  border-radius: 20px;*/
	margin: 40px 30px;
}

.shadow1 {
	box-shadow: 0 5px 10px rgba(154, 160, 185, .05), 0 15px 40px
		rgba(166, 173, 201, .4);
}
</style>
</head>
<body>
<% if(session.getAttribute("adlogin")=="no") 

{
	response.sendRedirect("http://localhost:8080/InventoryManagement/adminlogin");
}

%>
<%@include file="header.jsp" %>
 

 <div class=" row card shadow1 ">






<div class="col-12" style="text-align:center;">


<h1 class="page-header" >
   Add Device

</h1>
<br>

               
</div>
<div>

<form action="dbadd.jsp" method="post" >

<div class="row">
  <div class="col-6"><div class="form-group">
    <label for="product-title">Device ID </label>
        <input type="text" name="id" class="form-control" required>
       
    </div></div>
  <div class="col-6"> <div class="form-group">
           <label for="product-title">Company</label>
      <input name="company"  class="form-control" required></input>
    </div></div>
  
</div>
<div class="row">
<div class="col-6">
 <div class="form-group">
         <label for="product-title">Model Number</label>
        <input type="text" name="model" class="form-control" required>
        


</div></div>
<div class="col-6">
  <div class="form-group">
      <label for="product-title">Location</label>
         <input type="text" name="location" class="form-control" required>
        
    </div></div>
  
</div>


 
<div class="form-group" style="text-align:center;">
       <input type="submit" name="add" class="btn btn-danger btn-lg" value="Add Device">
       
    </div>
  
    
</form>



                



            </div>
            <!-- /.container-fluid -->

   
        </div>
        <!-- /#page-wrapper -->

        
       
        
  


</body>
</html>