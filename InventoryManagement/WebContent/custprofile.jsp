<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>Insert title here</title>
<style>
        .center{
            text-align:center;
        }
        .width{
            width:50%;
           
        }
        .height{
             height:500px;
        }
        .left{
            float:left;
        }
        .border{
             border-bottom: none;
        }
        
      .carde {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 15px;
	padding-right: 15px;
	background: #fff;
	/*  max-width: 360px;*/
	/*  border-radius: 20px;*/
	margin: 40px 30px;
}

.shadow1 {
	box-shadow: 0 5px 10px rgba(154, 160, 185, .05), 0 15px 40px
		rgba(166, 173, 201, .4);
} 


    </style>
</head>
<body>
<% if(session.getAttribute("loggedin")=="no") 

{
	response.sendRedirect("login.jsp");
}

%>
<%@include file="custsidenav.jsp" %>
<div class="py-5">
    <div class="container1 " style="padding:5px;">
     
      <div class="row height">
        <div class="col-md-12 ">
          <div class="card shadow1 " style="width:500px;margin:50px auto;">
            <div class="card-header  center" style="background-color:red;">My Profile</div>
            <div class="card-body"  style="margin-bottom:10px;">
               <div class="center"><i class="fa fa-user-circle  fa-5x " style="color:red"></i></div> <br>
              <h5 class="card-title center font-weight-bold" style="color:red;">Welcome <%=session.getAttribute("username") %></h5>
              <!--<p class="card-text">Name :&nbsp;</p>-->
            </div>
            <ul class="list-group list-group-flush ">
            
            
            
            
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
	    	    "select * from employees where name=?");  
	    	  
	    ps.setString(1, to);
	    	              
	    	ResultSet rs=ps.executeQuery();  

	    	 while (rs.next()) {
	 	    
	 	    
	 	    	
	 	    	String email=rs.getString("email");
	 	    	String id=rs.getString("id");
	 	    	String loc=rs.getString("location");
	 	       
	 	       %>
	 	   
     
            
                 <li class="list-group-item  "><span class="font-weight-bold"style="color:red;">Email:</span> <%=email %></li>
              <li class="list-group-item  "><span class="font-weight-bold"style="color:red;">Employee ID:</span><%=id %> </li>
              <li class="list-group-item"> <span class="font-weight-bold"style="color:red;">Location:</span> <%=loc %></li>
              
              
              
               <%
	 	       
	 	    } 
	

} catch (Exception ex) {
	out.println(ex);
	out.println("Unable to connect to database.");
}

%>
            </ul>
            <div class="card-footer shadow1" style="background-color:red;">
   
  </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  
</body>
</html>