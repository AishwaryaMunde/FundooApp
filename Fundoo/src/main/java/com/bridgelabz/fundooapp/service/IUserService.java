package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserService {	
	
	public Userdata create(Userdata user);

	public String read(UserLogin user);

	public String forgetPassword(String emailId);
}
