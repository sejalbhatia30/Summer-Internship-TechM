<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %> <%@page import="java.util.*" %>
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
	String id = request.getParameter("userid");    
	String pass = request.getParameter("pass");
	String cpass = request.getParameter("cpass");
	
	if(pass.equals(cpass)){
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "update employees set password=? where id =?");  
		ps.setString(1,pass);   
	    	ps.setString(2,id);  
	     
	    	              
	    	int i=ps.executeUpdate();

	    	 if (i>0) {
	 	    	
	 	        session.setAttribute("fp", "true");
	 	 
	 	        
	 	        response.sendRedirect("http://localhost:8080/InventoryManagement/login");
	 	    	}
	 	     else {
	 	        out.println("Invalid ID <a href='register.jsp'>Register </a>");
	 	    }
	    	 }
	    	 else out.println("Passwords doesn't match ! <a href='http://localhost:8080/InventoryManagement/forgot'>try again</a>");
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>

</body>
</html>