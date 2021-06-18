package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("newuser");
		String pass=request.getParameter("newpass");
		RegisterDao dao=new RegisterDao();
		try {
			if(dao.check(name, pass)) {
				out.println("<html><body style=\'background-color: lightblue'><h2>");
				out.println("You have successfully register<br>");
				out.println("</h2>");
				out.println("CLICK HERE TO GO ON    ");
				out.println("<a href='index.jsp'>LOGIN PAGE</a>");
				out.println("</body></html>");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
