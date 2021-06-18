package com.login;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("uname");
		session.invalidate();
		
		res.sendRedirect("login.jsp");
	}
}
