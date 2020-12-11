package com.servlet;


import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Complain;
import com.model.customer;
import javax.servlet.RequestDispatcher;

import com.service.CustomerAction;
import com.service.CustomerImplement;





public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		
		String NIC = request.getParameter("NIC");
		String password = request.getParameter("password");
		
		CustomerAction customeraction = new CustomerImplement();
		boolean userDetails= customeraction.validateuser(NIC, password);
		
		
		
		if(userDetails == true) {
			
			CustomerAction customeraction1 = new CustomerImplement();
		

			try {
		    List<customer> cusDetails = customeraction1.GetUser(NIC);
		    request.setAttribute("cusDetails", cusDetails);
			}
			  catch (Exception e) {
					e.printStackTrace();
				    }
			
			
			HttpSession session = request.getSession();
			session.setAttribute("userNIC",NIC);
			
			
			RequestDispatcher dis1 = request.getRequestDispatcher("CustomerReport.jsp");
			dis1.forward(request, response);    
			
			
		
		} 
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("LoginFailed.jsp");
			dis2.forward(request, response);
	
		}
		
	
		
	}
		
	}
	
	

