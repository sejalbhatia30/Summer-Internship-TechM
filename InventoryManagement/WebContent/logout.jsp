<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
session.setAttribute("username","TechM Employee");
session.setAttribute("loggedin","no");
session.setAttribute("issued", "0");
response.sendRedirect("http://localhost:8080/InventoryManagement/login?prev=http://localhost:8080/InventoryManagement/login");
%>


</body>
</html>