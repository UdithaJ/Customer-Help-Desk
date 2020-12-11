package com.service;

import com.model.Complain;
import com.model.customer;
import java.util.ArrayList;
import java.util.List;




public interface CustomerAction {
	
	
	public boolean adduser(String username,String NIC, String email, String password, String connectionNo);
	
	public boolean validateuser(String NIC,String password);
	
	public List<customer> GetUser(String NIC);
	
	public boolean Addcomplain(String NIC, String connectionNo, String description , String contactNo,String type);
	
	public List<Complain> Display(String NIC);
	
	public boolean UpdateComplain(String refno,String NIC, String connectionNo, String type, String description, String contact);
	
	public boolean DeleteComplain(String refno);

}
