<%@page import="com.login.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
 
 <style>
body{
  background-image:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUv2S9QYNTJPTKfmn4v3wJbAlqxM31jaZkqg&usqp=CAU');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  
}
</style>
 	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	String name=(String)session.getAttribute("uname");
	if(session.getAttribute("uname")==null){
		out.println("<h3 style='color:red'>");
		out.println("Sorry you are not logged in");
		out.println("</h3>");
		out.println("<h4 style='color:white'>");
		out.println("CLICK HERE TO GO ON   ");
		out.println("<a href='login.jsp'>LOGIN PAGE </a>");
		out.println("</h4>");
	}
	else{
		
		out.println("<h1  style='color:white'>Hello "+name.toUpperCase()+"!!!</h1><br><br>");
		out.println("<h2  style='color:white'>Welcome to our secured site</h2>");
		out.println("	<br>");
		out.println("<p  style='color:white'>");
		out.println("Click <a href='videos.jsp'>here</a> to watch exclusive videos");
		out.println("</p>");
		out.println("<form action='Logout'><br> <input type='submit' value='Logout'></form>");
	}
	%>
	
	
	
	
	
</body>
</html>