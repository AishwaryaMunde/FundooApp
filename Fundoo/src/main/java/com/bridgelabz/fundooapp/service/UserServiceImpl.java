package com.bridgelabz.fundooapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bridgelabz.fundooapp.dao.UserDaoImpl;
import com.bridgelabz.fundooapp.model.Userdata;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDaoImpl dao;
	
	public Userdata create(Userdata user) {
		System.out.println("in service "+user);
		dao.createUser(user);
		return user;
	}

	public String read(String emailId, String password) {
		System.out.println("in service : "+emailId+" "+password);
		dao.readUser(emailId,password);
		return emailId;
	}
}
