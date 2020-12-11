package com.servlet;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.customer;
import com.service.CustomerAction;
import com.service.CustomerImplement;


public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		String username = request.getParameter("username");
		String NIC = request.getParameter("NIC");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String connectionNo = request.getParameter("connectionNo");
		
		CustomerAction customeraction = new CustomerImplement();
		boolean obj = customeraction.adduser(username, NIC, email, password, connectionNo);
		
		
		if(obj == true) {
			RequestDispatcher dis = request.getRequestDispatcher("CustomerLogin.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RegisterFail.jsp");
			dis2.forward(request, response);
		}
			
			
	
	}

}
