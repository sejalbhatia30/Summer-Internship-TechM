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
	

	String id=request.getParameter("id");
	
	
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "update devices set status='Not Issued' , issueto=?,date=?  where id=? ");  
	    ps.setString(1, "-");
	    ps.setString(2, null);
	    ps.setString(3, id);
	    PreparedStatement ps1=connection.prepareStatement( "update track set dater=now()   where id=? " );  
	    ps1.setString(1,id);
	    	int i=ps.executeUpdate();  

	    	if (i>0) {
	    		int j=ps1.executeUpdate();
 	    		if(j>0)
	    		  response.sendRedirect("custall.jsp");
	 	    	
	 	      
	 	    } 
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>

</body>
</html>