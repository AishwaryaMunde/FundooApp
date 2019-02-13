package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.Userdata;

public class UserServiceImpl implements IUserService{

	@Override
	public Userdata create(Userdata user) {
		System.out.println("in service "+user);
		return user;
	}

}
