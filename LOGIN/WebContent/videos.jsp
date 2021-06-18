<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: lightblue">
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("uname")==null){
		out.println("Sorry you are not logged in");
		out.println("CLICK HERE TO GO ON LOGIN PAGE   ");
		out.println("<a href='login.jsp'>login</a>");
		
	}
	else{
		out.println("<iframe width='560' height='315' src='https://www.youtube.com/embed/Xd29mNwjUQQ' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>");
		out.println("<br>");
		out.println("<iframe width='560' height='315' src='https://www.youtube.com/embed/a6cJAFFQn_I' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>");
		out.println("<br><br><iframe width='560' height='315' src='https://www.youtube.com/embed/TmRgK-pXH9c' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>");
		out.println("<br>");
		out.println("<iframe width='560' height='315' src='https://www.youtube.com/embed/eVnG_Rqfgg4' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>");
		out.println("<br><br><form action='Logout'><br> <input type='submit' value='Logout'></form>");
	}
  %>
</body>
</html>