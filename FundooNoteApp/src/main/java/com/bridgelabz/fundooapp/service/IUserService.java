package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public interface IUserService {
	public Fundoouserdata addUser(Fundoouserdata user);
	public String readUser(String emailId , String password);
	public int updateUser(String id);
	public int deleteUser(String id);
}
