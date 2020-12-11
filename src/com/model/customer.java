package com.model;

public class customer {
	
	private String username;
	private String userId;
	private String NIC;
	private String email;
	private String password;
	private String connectionNo;

	public customer(String username, String userId, String NIC, String email, String password, String connectionNo) {
		
		this.username = username;
		this.userId = userId;
		this.NIC = NIC;
		this.email = email;
		this.password = password;
		this.connectionNo = connectionNo;
	}
	
	public customer() {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getNIC() {
		return NIC;
	}
	
	public void setNIC(String NIC) {
		this.NIC = NIC;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getConnectionNo() {
		return connectionNo;
	}
	
	public void setConnectionNo(String connectionNo) {
		this.connectionNo = connectionNo;
	}
	

	


}
