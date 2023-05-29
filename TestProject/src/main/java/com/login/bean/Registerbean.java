package com.login.bean;

import java.io.Serializable;


public class Registerbean implements Serializable {
	private static final long serialVersionUID = 1L;
    
	private String FName;
	private String Lname;
	private String email;
	private String username;
    private String password;
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Registerbean(String fName, String lname, String email, String username, String password) {
		super();
		FName = fName;
		Lname = lname;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public Registerbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
    
}
