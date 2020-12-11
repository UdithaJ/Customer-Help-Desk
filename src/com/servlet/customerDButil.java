package com.servlet;



import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import com.model.Complain;
import com.model.customer;
import com.util.DBconnect;






public class customerDButil {

			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
	public static boolean checkuser(String NIC,String password){
		
		 boolean flag=false;
		 
		
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    	    String qurey="select * from user_account where NIC='"+NIC+"' and password='"+password+"'";
	    	  
	    	     rs=stmt.executeQuery(qurey);
	    	    
	    	    if(rs.next()){
	    	    	
	    	    	
	    	     flag=true;
	    	    }
	    	    
	    	    
	    	    else {
	    			flag = false;
	    		}
	    	    
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	   	 
	    	  
	    	  return flag;
	    		
	    	}
		

	
		
		public static boolean insertuser(String username,String NIC, String email, String password, String connectionNo) {
	    	
			
			
			
	    	boolean isSuccess = false;
	    	
	    	
	    	try {
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    		String sql2  = "select * from user_account where NIC = '"+NIC+"'";
	    		rs = stmt.executeQuery(sql2);
	    		
	    		if(!rs.next()) {
	    			
	    	    String sql = "insert into user_account(username,userid,NIC,email,password,connectionNo)values ('"+username+"',0,'"+NIC+"','"+email+"','"+password+"','"+connectionNo+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} 
	    		
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    		
	    		}
	    		
	    		else {
	    			
		    			isSuccess = false;
	    			
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	    
	    
		
		
		
public static boolean Addcomplain(String NIC, String connectionNo, String description , String contactNo,String type) {
	    	
	    	boolean isSuccess = false;
	    	
	 
	    	try {
	    		
	    	    
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into complain(refno,connectionNo,description,contact,state,NIC,type,date)values (0,'"+connectionNo+"','"+description+"','"+contactNo+"',Default,'"+NIC+"','"+type+"',now())";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} 
	    		
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	}




public static List<Complain> Display(String NIC) {
	
	ArrayList<Complain> com = new ArrayList<>();
	
	

	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    
		con = DBconnect.getConnection();
		stmt = con.createStatement();
	    String sql = "select * from complain where NIC = '"+NIC+"' ";
	    rs = stmt.executeQuery(sql);
	    
	    while(rs.next()){
	    	
	    	int refno =rs.getInt(1);
	    	String connectionNo=rs.getString(2);
	    	String description=rs.getString(3) ;
	    	String contact=rs.getString(4); 
	    	String status=rs.getString(5) ;
	    	String nic=rs.getString(6);
	    	String type =rs.getString(7);
	    	String date =rs.getString(8);
	    	
	    	
	    	
	    	
	    	
	    	Complain c = new Complain(refno, connectionNo,description, contact, status,nic, type,date);
	    	com.add(c);
	    }
	    
	}
	    
	    catch (Exception e) {
	    	e.printStackTrace();
	    }
	
	return com ;	    	

}


public static boolean UpdateComplain(String refno,String NIC, String connectionNo, String type, String description, String contact) {
	
	boolean obj = false;
	

	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    
		con = DBconnect.getConnection();
		stmt = con.createStatement();
	    String sql="Update complain set NIC='"+NIC+"',connectionNo='"+connectionNo+"',description='"+description+"',contact='"+contact+"',type='"+type+"' where refno='"+refno+"'";
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0) {
			obj= true;
		} 
		
		else {
			obj = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return obj;
}


public static boolean DeleteComplain(String refno) {
	
	boolean obj = false;
	

	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    
		con = DBconnect.getConnection();
		stmt = con.createStatement();
	    String sql="Delete from complain where refno ='"+refno+"'";
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0) {
			obj= true;
		} 
		
		else {
			obj = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return obj;
}



public static List<customer> GetUser(String NIC) {
	
	ArrayList<customer> cus = new ArrayList<>();
	
	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    
		con = DBconnect.getConnection();
		stmt = con.createStatement();
	    String sql = "select * from user_account where NIC = '"+NIC+"' ";
	    rs = stmt.executeQuery(sql);
	    
	    while(rs.next()){
	    	
	    	String username=rs.getString(1);
	    	String userid =rs.getString(2);
	    	String nic=rs.getString(3) ;
	    	String email=rs.getString(4); 
	    	String password=rs.getString(5) ;
	    	String connectionNo=rs.getString(6);
	 
	    	
	    	customer c = new customer(username,userid,nic,email,password,connectionNo);
	    cus.add(c);
	    }
	    
	}
	    
	    catch (Exception e) {
	    	e.printStackTrace();
	    }
	
	return cus ;	    	

}


}

		
	

