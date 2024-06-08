package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Message;

/**
 * Servlet implementation class EditServlet
 */
public class EditServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		//fetch all the data for the edit in DB
		String editName = request.getParameter("edit_name");
		String editEmail = request.getParameter("edit_email");
		String editPassword = request.getParameter("edit_password");
		
		
		
	    //get the user from the sessionn 
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("currentUser");
		
		//set the updated data to the user 
		
		user.setName(editName);
		user.setEmail(editEmail);
		user.setPassword(editPassword);
		
		
		
		
		//update the data or user into the db using the dao class
		
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		if(dao.updateUser(user)) {
			Message msg =  new  Message("Details are updated ","success","alert-success");
			session.setAttribute("msg", msg);
		
			
			
		}else {
			Message msg =  new  Message("Details are not updated !","error","alert-danger");
			session.setAttribute("msg", msg);
			
		}
		
		
		response.sendRedirect("profile.jsp");
		
		
		
		
	}

}
