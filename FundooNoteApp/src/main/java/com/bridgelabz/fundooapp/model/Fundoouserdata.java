package com.bridgelabz.fundooapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Userdata")
public class Fundoouserdata {
	
	@Id
	@Column(name="Id")
	@GenericGenerator(name = "user", strategy = "increment")
	@GeneratedValue(generator = "user")
	private int id;
	@Column(name="Name")
	private String name;
	@Column(name="Mobileno")
	private String mobileNo;
	@Column(name="EmailId")
	private String emailId;
	@Column(name="Password")
	private String password;

	public Fundoouserdata() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", mobileNo=" + mobileNo + ", emailId=" + emailId + ", password="
				+ password + "]";
	}
}
