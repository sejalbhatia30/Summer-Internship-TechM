<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  <%@page import="java.sql.*" %>
<!DOCTYPE html >
<html>
<head>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Desk</title>
<link rel="stylesheet" href="static/custadd.css">
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
<% if(session.getAttribute("loggedin")=="no") 

{
	response.sendRedirect("http://localhost:8080/InventoryManagement/login?prev="+request.getRequestURL()+"");
}

%>
<%@include file="custsidenav.jsp" %>
 

 <div class="  card shadow1 " style="text-align:center;width:500px;margin:140px auto;">









<h1  >
  Choose Device

</h1>
<h6>You can choose only 3 devices at a time !</h6>
<br>

               

<div style="text-align:center;">

<form action="dbcustadd.jsp" method="post" style="display:inline-block" >


    <label for="favcity">
    <select id="favcity" name="select">
     <option  disabled selected hidden>Choose Device</option>
    <%

try {
	
	String connectionURL = "jdbc:mysql://localhost:3306/ims";

	Connection connection = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();


	connection = DriverManager.getConnection(connectionURL, "root",
			"sql1");
	

	 String to;
	to=(String)session.getAttribute("username");     

	
	
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "select * from devices where status='Not Issued' and location in(select location from employees where name=?)");  
	    	  
	    ps.setString(1, to);
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	    
	 	    
	    		 String id=rs.getString("id"); 
	 	    	String model=rs.getString("model");
	 	    	String device= model.replaceAll(" ","");
	 	       
	 	       %>
	 	   
     
      <option value=<%=id %>><%=device %></option>
     
   
       
 
	 	       <%
	 	       
	 	    } 
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>
 </select>
  </label>
 
<div class="form-group" style="text-align:center; margin-top:20px;">
       <input type="submit" name="add" class="btn btn-danger btn-lg" value="Issue Device">
       
    </div>
  
    
</form>



                



            </div>
            

   
        </div>
      
        
       
        
  


</body>
</html>