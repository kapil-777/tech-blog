package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Message;


public class RegisterServlet extends HttpServlet {



	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		//fetch all the user inputs
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	//	doGet(request, response);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//fetch all the user inputs
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String password = request.getParameter("user_password");
		
		//set all data to user : entitis : obj 
		User user = new User(name,email,password);
		
		//create the obj of UserDao : dao and pass con object for the connection
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		
		//save data to db
		if (dao.saveUser(user)) {
			out.println("user registered");
			response.sendRedirect("login_page.jsp");
			
		}
		else {
			Message msg =  new  Message("email already exist","error","alert-danger");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			response.sendRedirect("registration_page.jsp");
		}
		
		
		
		
	}

}
