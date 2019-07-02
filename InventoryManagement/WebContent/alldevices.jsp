<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>TechM IMS | All Devices</title>
<link rel="stylesheet" href="static/table.css">

</head>
<body>

<% if(session.getAttribute("adlogin")=="no") 

{
	response.sendRedirect("adminlogin.jsp");
}

%>

<%@include file="headeradmin.jsp" %>

<form method="get" action="delete.jsp" style="text-align:center;float:right;margin:10px;">

<button  type="submit" class=" btn btn-secondary  btn-lg" >Delete Device</button>

</form>
<form method="get" action="track.jsp" style="text-align:center;float:right;margin:10px;">

<button  type="submit" class=" btn btn-secondary  btn-lg" >Track Records</button>

</form>
<form method="get" action="adddevice.jsp" style="text-align:right;margin:10px;">

<button  type="submit" class=" btn btn-secondary btn-lg" >Add Device</button>

</form>

<div class="t">

<table>
  
  <thead>
    <tr>
            <th class="ttitle" colspan="7">
                <h2>Tech Mahindra Inventory</h2>
            </th>
        </tr>
    <tr>
            
            <th>Device ID</th>
            <th>Company</th>
            <th>Model </th>
            <th>Location</th>
            <th>Issued Status</th>
             <th>Issued to</th>
             <th>Date of Issue</th>
           
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
	    	    "select * from devices ");  
	    	  
	    	 
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	    
	 	    	String id=rs.getString("id");
	 	    	String company=rs.getString("comapany");
	 	    	String model=rs.getString("model");
	 	    	String location=rs.getString("location");
	 	    	String status=rs.getString("status");
	 	    	String to=rs.getString("issueto");
	 	   	    String date=rs.getString("date");
	 	          if(date==null)date="-";
	 	       
	 	       %>
	 	   

  <tbody>
    <tr>
     
      <td data-label="Device ID"><%=id %></td>
      <td data-label="Company"><%=company %></td>
      <td data-label="Model No."><%=model %></td>
      <td data-label="Location"><%=location %></td>
      <td data-label="Issued Status"><%=status %></td>
      <td data-label="Issued To"><%=to %></td>
     <td data-label="Date of Issue"><%=date %></td>
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