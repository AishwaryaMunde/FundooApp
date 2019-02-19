package com.bridgelabz.fundooapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bridgelabz.fundooapp.dao.UserDaoImpl;
import com.bridgelabz.fundooapp.model.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;
import com.bridgelabz.fundooapp.utility.Utility;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDaoImpl dao;
	@Autowired
	Utility utility;
	public Userdata create(Userdata user) {
		System.out.println("in service "+user);
		dao.createUser(user);
		return user;
	}

	public String read(UserLogin user) {
		String userName=user.getUserName();
		String password = user.getUserPassword();
		dao.readUser(userName,password);
		return userName;
	}

	public String forgetPassword(String emailId) {
		System.out.println("in service :"+emailId);
		String password = dao.getPassword(emailId);
		System.out.println("password : "+password);
		Utility.emailSend(emailId,password);
		return emailId;
	}
}
