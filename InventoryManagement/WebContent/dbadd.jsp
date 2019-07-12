<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html >
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
	String model = request.getParameter("model");
	String company = request.getParameter("company");
	String loc = request.getParameter("location");
	model=model.replaceAll(" ","");
	  
	 	     
	 	   
	PreparedStatement st = connection.prepareStatement("insert into devices (id,comapany,model,location,status,issueto,date) values (?,?,?,?,?,?,?)");
	st.setString(1, id);
	st.setString(4, loc);
	st.setString(2, company);
	st.setString(3, model);
	st.setString(5, "Not Issued");
	st.setString(6, "-");
	st.setString(7, null);
	int i=st.executeUpdate();
 

	if (i > 0) {
	    
	    response.sendRedirect("http://localhost:8080/InventoryManagement/all");
	 
	} else {
	    response.sendRedirect("error.jsp");
	}	

	 	       
	 	       
	 	      
	 	    
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>
</body>
</html>