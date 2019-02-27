package com.bridgelabz.fundooapp.service;

import java.util.List;

import com.bridgelabz.fundooapp.model.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserService {	
	
	public String create(Userdata user);

	public int read(UserLogin user);

	public String forgetPassword(String emailId);

	public List fetchAllUserData();

	public Userdata getUserInfo();
}
