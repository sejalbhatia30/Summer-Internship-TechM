<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>TechM IMS | Available Devices</title>
<link rel="stylesheet" href="static/table.css">

</head>
<body>

<% if(session.getAttribute("loggedin")=="no") 

{
	response.sendRedirect("http://localhost:8080/InventoryManagement/login?prev="+request.getRequestURL()+"");
}

%>

<%@include file="custsidenav.jsp" %>

<div class="t">

<table>
  
  <thead>
    <tr>
            <th class="ttitle" colspan="4">
                <h2>Available Devices</h2>
            </th>
        </tr>
    <tr>
            
            <th>Device ID</th>
            <th>Company</th>
            <th>Model </th>
            <th>Location</th>
         
           
    </tr>
  </thead>
  

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
	    	    "select * from devices where status='Not Issued' and location in (select location from employees where name=?)");
	
	    ps.setString(1,to);
	    	  
	    	 
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	    
	 	    	String id=rs.getString("id");
	 	    	String company=rs.getString("comapany");
	 	    	String model=rs.getString("model");
	 	    	String location=rs.getString("location");
	 	    	
	 	   	  
	 	       
	 	       %>
	 	   

  <tbody>
    <tr>
     
      <td data-label="Device ID"><%=id %></td>
      <td data-label="Company"><%=company %></td>
      <td data-label="Model No."><%=model %></td>
      <td data-label="Location"><%=location %></td>
   
    </tr>
   
  </tbody>


	 	       
	 	       
	 	       
	 	       <%
	 	       
	 	    } 
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>

	</table>
</div> 	       


</body>
</html>