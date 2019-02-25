package com.bridgelabz.fundooapp.dao;

import java.util.List;

import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserdao {
	
	public String createUser(Userdata user);
	public boolean readUser(String emailId, String password);
	public String getPassword(String emailId);
	public List<Userdata> fetchAllUsers();
}
