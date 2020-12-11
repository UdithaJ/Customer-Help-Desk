package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.CustomerAction;
import com.service.CustomerImplement;


public class UpdateComplain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			
			throws ServletException, IOException {
		
	    String refno = request.getParameter("refno");
		String NIC = request.getParameter("NIC");
		String connectionNo = request.getParameter("connectionNo");
		String type = request.getParameter("type");
		String description = request.getParameter("des");
		String contact= request.getParameter("contactNo");
	
		
		

		
CustomerAction customeraction = new CustomerImplement();
boolean obj = customeraction.UpdateComplain(refno, NIC, connectionNo, type, description, contact);
		
		if(obj == true) {
			response.sendRedirect("DisplayComplain");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RegisterFail.jsp");
			dis2.forward(request, response);
		}
		
	
		
		
	}

}
