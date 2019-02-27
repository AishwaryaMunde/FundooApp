package com.bridgelabz.fundooapp.dao;

import java.util.List;

import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserdao {
	
	public String createUser(Userdata user);
	public int readUser(String emailId, String password);
	public String getPassword(String emailId);
	public List<Userdata> fetchAllUsers();
	public Userdata getUser(int id);
}
