package com.example.ecom;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="sdp_project")
public class Student {
	
	@Id
	@Column(name="username")
	String username;
	

	@Column(name="email")
	String email;
	

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
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


	public Student() {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
	}


	@Column(name="password")
	String password;
	
	
}
