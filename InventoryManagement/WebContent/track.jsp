<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>TechM IMS |Track Devices</title>
<link rel="stylesheet" href="static/table.css">

</head>
<body>

<% if(session.getAttribute("adlogin")=="no") 

{
	response.sendRedirect("adminlogin.jsp");
}

%>

<%@include file="headeradmin.jsp" %>



<div class="t">

<table>
  
  <thead>
    <tr>
            <th class="ttitle" colspan="7">
                <h2>Track Devices</h2>
            </th>
        </tr>
    <tr>
            
            <th>Device ID</th>
            
            <th>Model </th>
            <th>Location</th>
            <th>Employee ID</th>
             <th>Employee Name</th>
             <th>Date of Issue</th>
            <th>Date of Return</th>
    </tr>
  </thead>
  

<%

try {
	
	String connectionURL = "jdbc:mysql://localhost:3306/ims";

	Connection connection = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();


	connection = DriverManager.getConnection(connectionURL, "root",
			"sql1");
	
	
	
	
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "select * from track ");  
	    	  
	    	 
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	    
	 	    	String id=rs.getString("id");
	 	    	
	 	    	String model=rs.getString("model");
	 	    	String location=rs.getString("location");
	 	    	String eid=rs.getString("empid");
	 	    	String name=rs.getString("issueto");
	 	   	    String datei=rs.getString("datei");
	 	   	 String dater=rs.getString("dater");
	 	          if(dater==null)dater="-";
	 	       
	 	       %>
	 	   

  <tbody>
    <tr>
     
      <td data-label="Device ID"><%=id %></td>
      
      <td data-label="Model No."><%=model %></td>
      <td data-label="Location"><%=location %></td>
      <td data-label="Employee ID"><%=eid %></td>
      <td data-label="Employee Name"><%=name %></td>
     <td data-label="Date of Issue"><%=datei %></td>
     <td data-label="Date of Return"><%=dater %></td>
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