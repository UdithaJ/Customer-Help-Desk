package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static String url = "jdbc:mysql://localhost:3306/helpdesk";
	private static String username = "root";
	private static String password = "mysql";
	private static Connection con;
	
	public static Connection getConnection(){
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			
		}
		
		catch(Exception e){
			
			System.out.println("Connection Faild");
			
		}
		
		return con;
		
	}
	
}
	
	

