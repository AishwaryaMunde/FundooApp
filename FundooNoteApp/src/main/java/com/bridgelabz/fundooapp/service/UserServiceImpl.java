package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public class UserServiceImpl implements IUserService{

	public Fundoouserdata addUser(Fundoouserdata user) {
		System.out.println("in service add  \n" +user);
		return user;
	}

	public String readUser(String emailId, String password) {
		System.out.println("in service read \n"+emailId+" "+password);
		return emailId;
	}

	public int updateUser(String id) {
		int intId = Integer.parseInt(id);
		System.out.println("int id in update : "+intId);
		return 0;
	}

	public int deleteUser(String id) {
		int intId = Integer.parseInt(id);
		System.out.println("int id in delete: "+intId);
		return 0;
	}

}
