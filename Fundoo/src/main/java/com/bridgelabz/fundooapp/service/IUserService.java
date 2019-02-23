package com.bridgelabz.fundooapp.service;

import java.util.List;

import com.bridgelabz.fundooapp.model.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserService {	
	
	public Userdata create(Userdata user);

	public String read(UserLogin user);

	public String forgetPassword(String emailId);

	public List fetchAllUserData();

	public Userdata getUserInfo();
}
