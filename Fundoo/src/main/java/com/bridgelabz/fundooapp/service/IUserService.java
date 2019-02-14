package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserService {	
	
	public Userdata create(Userdata user);

	public String read(String emailId, String password);

	public String forgetPassword(String emailId);
}
