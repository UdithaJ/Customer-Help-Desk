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


public class DeleteComplain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
	
		
	
		String refno = request.getParameter("refno");
		
	
	
		
        CustomerAction customeraction = new CustomerImplement();
        boolean obj = customeraction.DeleteComplain(refno);
		
		
		if(obj == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("DeleteSuccess.jsp");
			dis1.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RegisterFail.jsp");
			dis2.forward(request, response);
		}
		
	
		
		
		
		
	}

}
