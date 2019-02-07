package com.bridgelabz.fundooapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Fundoouserdata")
public class Fundoouserdata
{
	@Id
	//@GenericGenerator(name = "user", strategy = "increment")
	//@GeneratedValue(generator = "user")
	@Column(name="Id")
	private int id;
	@Column(name="FirstName")
	String firstName;
	@Column(name="LastName")
	String lastName;
	@Column(name="MobileNo")
	String mobileNo;
	@Column(name="Emailid")
	String emailId;
	@Column(name="UserName")
	String userName;
	@Column(name="Password")
	String password;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		lastName = lastName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		emailId = emailId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		password = password;
	}
	@Override
	public String toString() {
		return "Userdata [FirstName=" + firstName + ", LastName=" + lastName + ", MobileNo=" + mobileNo + ", EmailId="
				+ emailId + ", UserName=" + userName + ", Password=" + password + "]";
	}
	
}
