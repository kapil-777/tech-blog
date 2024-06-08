package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.helper.Message;

public class LogoutServlet extends HttpServlet {
	
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//remove user from the session
		HttpSession session = request.getSession();
		session.removeAttribute("currentUser");
		
		
		Message msg =  new  Message("Logout Successfully","success","alert-success");
		session.setAttribute("msg", msg);
		response.sendRedirect("login_page.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
