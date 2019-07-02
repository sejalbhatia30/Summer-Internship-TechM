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


<% if(session.getAttribute("loggedin")=="no") 

{
	response.sendRedirect("adminlogin.jsp");
}

%>
<%

try {
	
	String connectionURL = "jdbc:mysql://localhost:3306/ims";

	Connection connection = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();


	connection = DriverManager.getConnection(connectionURL, "root",
			"sql1");
	
	
	String id = request.getParameter("select");
	
	
	 String to;
	to=(String)session.getAttribute("username");     

	PreparedStatement st = connection.prepareStatement("update devices set status='Issued' , issueto=? , date=now() where id=? and location in (select location from employees where name=?)");

	PreparedStatement st2 = connection.prepareStatement("insert into track (id,model,location,issueto,empid,datei) values(?,(select model from devices where id=?),(select location from devices where id=?),?,(select id from employees where name=?),(select date from devices where id=?))");
	st.setString(1, to);
	st.setString(2, id);
	st.setString(3, to);
	
	st2.setString(1, id);
	st2.setString(2, id);
	st2.setString(3, id);
	st2.setString(4, to);
	st2.setString(5, to);
	st2.setString(6, id);
	
	int i=st.executeUpdate();
    

	if (i > 0 ) {
		int j = st2.executeUpdate();
		if (j>0)
	    response.sendRedirect("custall.jsp");
	 
	} else {
		 out.println(id);
	   
	}	

	 	       
	 	       
	 	      
	 	    
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>
</body>
</html>