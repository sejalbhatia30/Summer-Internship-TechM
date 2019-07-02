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
	String user = request.getParameter("user");    
	String pass = request.getParameter("password");
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String loc = request.getParameter("loc");
	
	


	PreparedStatement st = connection.prepareStatement("insert into employees (name,email,password,id,location) values (?,?,?,?,?)");
	st.setString(1, user);
	st.setString(4, id);
	st.setString(2, email);
	st.setString(3, pass);
	st.setString(5, loc);
	int i=st.executeUpdate();
	if (i > 0) {
	    session.setAttribute("username", user);
	    session.setAttribute("userid", id);
	     
	    response.sendRedirect("login.jsp");
	 
	} else {
	    response.sendRedirect("register.jsp");
	}	

	

} catch (Exception ex) {
	out.println(ex);
	
	out.println("Unable to connect to database.");
}

%>

</body>
</html>