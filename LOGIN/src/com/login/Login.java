package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException{
		PrintWriter out=res.getWriter();
		 
		
		String user=req.getParameter("uname");
		String pass=req.getParameter("pass");
		LoginDao dao=new LoginDao();
		try {
			if(dao.check(user, pass)){
			HttpSession session=req.getSession();
			session.setAttribute("uname", user);
			res.sendRedirect("welcom.jsp");
			}
			else {
				out.println("<html><body style=\"background-color: lightblue\"><h2 style=\"color:red;\">");
				out.println("Sorry you are not a member");
				out.println("</h3></body></html>");
				out.println("CLICK HERE TO    ");
				out.println("<a href='register.jsp'>REGISTER</a> YOURSELF");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}	}
}
