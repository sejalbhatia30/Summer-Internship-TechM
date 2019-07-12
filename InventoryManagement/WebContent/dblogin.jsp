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
	String pass = request.getParameter("password");
	String url= request.getParameter("prevv");
	String urli= request.getParameter("prevv").toString();
	if(urli=="http://localhost:8080/InventoryManagement/login?prev=null"){
		urli="http://localhost:8080/InventoryManagement/login";
	}
	    PreparedStatement ps=connection.prepareStatement(  
	    	    "select * from employees where   id=?");  
	    	  
	    	ps.setString(1,id);  
	     
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 if (rs.next()) {
	 	    	String name=rs.getString("name");
	 	    	String p=rs.getString("password");
	 	    	if(p.equals(pass)){
	 	        session.setAttribute("username", name);
	 	 
	 	         session.setAttribute("loggedin","yes");
	 	        response.sendRedirect(urli);
	 	    	}
	 	     else {
	 	        out.println("Invalid credentials <a href='http://localhost:8080/InventoryManagement/login'>try again</a>");
	 	    }
	    	 }
	    	 else out.println("Please Register first <a href='http://localhost:8080/InventoryManagement/register'>try again</a>");
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>

</body>
</html>