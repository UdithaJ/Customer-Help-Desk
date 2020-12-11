package com.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Complain;
import com.service.CustomerAction;
import com.service.CustomerImplement;



public class DisplayComplain extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		String NIC = (String) session.getAttribute("userNIC");
		
		
	
		try {
			
		  CustomerAction customeraction = new CustomerImplement();
      	  List<Complain> comDetails =  customeraction.Display(NIC);
      	  request.setAttribute("comDetails", comDetails);
	    }
		
	    catch (Exception e) {
		e.printStackTrace();
		  
	    }
	    
	    
	    RequestDispatcher dis = request.getRequestDispatcher("MyComplain.jsp");
	    dis.forward(request, response);    
	}

}
