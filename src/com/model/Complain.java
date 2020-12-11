package com.model;

public class Complain {
	
	private int referenceNo;
	private String connectionNo;
	private String description;
	private String status;
	private String contactNo;
	private String NIC;
	private String type;
	private String date;



	 
	public Complain(int referenceNo, String connectionNo, String description,String contactNo, String status,String NIC,String type,String date) {
		super();
		this.referenceNo = referenceNo;
		this.connectionNo = connectionNo;
		this.description = description;
		this.contactNo = contactNo;
		this.status = status;
		this.NIC= NIC;
		this.type = type;
		this.date = date;
	
	
		
	}


		



	public int getReferenceNo() {
		return referenceNo;
	}


	
	


	public String getConnectionNo() {
		return connectionNo;
	}




	
	public String getDescription() {
		return description;
	}



	
	public String getContactNo() {
		return contactNo;
	}

	
	
	
	
	public String getStatus() {
		return status;
	}
	
	
	

	
	
	

	public String getNIC() {
		return NIC;
	}


	


	
	public String getType() {
		return type;
	}

	
	public String getDate() {
		return date;
	}

}
