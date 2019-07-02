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

<% if(session.getAttribute("loggedin")=="no") 

{
	response.sendRedirect("adminlogin.jsp");
}

%>

<%@include file="custsidenav.jsp" %>

<div class="t">

<table>
  
  <thead>
    <tr>
            <th class="ttitle" colspan="6">
                <h2>Issued Devices</h2>
            </th>
        </tr>
    <tr>
            
            <th>Device ID</th>
            <th>Company</th>
            <th>Model </th>
            <th>Location</th>
         
             <th>Date of Issue</th>
             <th>Remove</th>
           
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
	    	    "select * from devices where issueto=?");
	    ps.setString(1,to);
	    	  
	  
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	   
	 	    	String id=rs.getString("id");
	 	    	String company=rs.getString("comapany");
	 	    	String model=rs.getString("model");
	 	    	String location=rs.getString("location");
	 	    	
	 	   	    String date=rs.getString("date");
	 	          if(date==null)date="-";
	 	       
	 	       %>
	 	   

  <tbody>
    <tr>
     
      <td data-label="Device ID"><%=id %></td>
      <td data-label="Company"><%=company %></td>
      <td data-label="Model No."><%=model %></td>
      <td data-label="Location"><%=location %></td>
     <td data-label="Date of Issue"><%=date %></td>
   
     <td data-label="Remove"><a href="custdel.jsp?id=<%=id %>" ><img src="https://cdn4.iconfinder.com/data/icons/gradient-ui-1/512/error-256.png" href="alldevices.jsp"style="height:20px; width:20px;"></a></td>
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