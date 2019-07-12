<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try {
	
	String connectionURL = "jdbc:mysql://localhost:3306/ims";

	Connection connection = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();


	connection = DriverManager.getConnection(connectionURL, "root",
			"sql1");
	String id = request.getParameter("id");    
	
	int i=0;
	
	
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "select * from devices where   id=? ",  ResultSet.TYPE_SCROLL_SENSITIVE,
	              ResultSet.CONCUR_UPDATABLE);  
	    	  
	    	ps.setString(1,id);  
	    	
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	    		   rs.deleteRow();
	    		   i++;
	    	 }
	    	if(i>0) response.sendRedirect("http://localhost:8080/InventoryManagement/alldevices");

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>

</body>
</html>