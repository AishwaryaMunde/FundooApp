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
	@Column(name="First_Name")
	private String firstName;
	@Column(name="Middle_Name")
	private String middleName;
	@Column(name="Last_Name")
	private String lastName;
	@Column(name="Date_Of_Birth")
	private String dateOfBirth;
	@Column(name="Gender")
	private String gender;
	@Column(name="Country")
	private String country;
	@Column(name="Phone")
	private String phone;
	@Column(name="Phone_Ext")
	private String phoneExt;
	@Column(name="Email_Id")
	private String emailId;
	@Column(name="Address")
	private String address;
	@Column(name="Username")
	private String userName;
	@Column(name="Password")
	private String password;
	@Column(name="Status")
	private String status;
	
	public Fundoouserdata() {
	}
	
	public Fundoouserdata(int id, String firstName, String middleName, String lastName, String dateOfBirth,
			String gender, String country, String phone, String phoneExt, String emailId, String address,
			String userName, String password, String status) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.country = country;
		this.phone = phone;
		this.phoneExt = phoneExt;
		this.emailId = emailId;
		this.address = address;
		this.userName = userName;
		this.password = password;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhoneExt() {
		return phoneExt;
	}
	public void setPhoneExt(String phoneExt) {
		this.phoneExt = phoneExt;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Fundoouserdata [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender + ", country=" + country + ", phone="
				+ phone + ", phoneExt=" + phoneExt + ", emailId=" + emailId + ", address=" + address + ", userName="
				+ userName + ", password=" + password + ", status=" + status + "]";
	}
}
