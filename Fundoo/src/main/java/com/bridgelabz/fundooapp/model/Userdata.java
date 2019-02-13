package com.bridgelabz.fundooapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Userdata {
	@Column(name="Username")
	private String userName;
	@Column(name="password")
	private String password;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Userdata [userName=" + userName + ", password=" + password + "]";
	}
	
}
