package com.bridgelabz.fundooapp.dao;

import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserdao {
	
	public Userdata createUser(Userdata user);
	public String readUser(String emailId, String password);
	public String getPassword(String emailId);
}
