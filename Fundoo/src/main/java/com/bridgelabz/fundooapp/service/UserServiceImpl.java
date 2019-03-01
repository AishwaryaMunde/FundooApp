package com.bridgelabz.fundooapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bridgelabz.fundooapp.dao.UserDaoImpl;
import com.bridgelabz.fundooapp.dto.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;
import com.bridgelabz.fundooapp.utility.Utility;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDaoImpl dao;
	@Autowired
	Utility utility;
	public String create(Userdata user) {
		System.out.println("in service "+user);
		String status = dao.createUser(user);
		String emailId = user.getEmailId();
		String password = user.getPassword();
		String userName = user.getUserName();
		Utility.userData(emailId, userName, password);
		System.out.println(status);
		return status;
	}

	public int read(UserLogin user) {
		String userName=user.getUserName();
		String password = user.getUserPassword();
		int id = dao.readUser(userName,password);
		System.out.println("in service : "+id);
		return id;		
	}

	public String forgetPassword(String emailId) {
		System.out.println("in service :"+emailId);
		String password = dao.getPassword(emailId);
		System.out.println("password : "+password);
		Utility.emailSend(emailId,password);
		return emailId;
	}

	public List fetchAllUserData() {
		List list = dao.fetchAllUsers();
		System.out.println("in service : " +list);
		return list;
	}

	public Userdata getUserInfo(int id) {
		Userdata userData=dao.getUser(id) ;
		return userData;
	}
}
