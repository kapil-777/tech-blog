package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;


import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Message;


public class LoginServlet extends HttpServlet {
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
//		out.print("login.   ...");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		 
		//get connection
		
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		
	    User user =	dao.getUserByEmailAndPassword(email, password);
		
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);
			response.sendRedirect("profile.jsp");
		}
		else {
			Message msg =  new  Message("invalid credentials","error","alert-danger");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			response.sendRedirect("login_page.jsp");
		}
		
	}

}
