package com.bridgelabz.fundooapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bridgelabz.fundooapp.dao.IUserdao;
import com.bridgelabz.fundooapp.model.Fundoouserdata;

@Service
public class UserServiceImpl implements IUserService {
	
	@Autowired
	IUserdao dao;
	
	public Fundoouserdata addUser(Fundoouserdata user) {
		System.out.println("in service add  \n" +user);
		dao.create(user);
		return user;
	}

	public String readUser(String emailId, String password) {
		System.out.println("in service read \n"+emailId+" "+password);
		dao.read(emailId, password);
		return emailId;
	}

	public int updateUser(String id) {
		int intId = Integer.parseInt(id);
		System.out.println("int id in update : "+intId);
		dao.update(intId);
		return intId;
	}

	public int deleteUser(String id) {
		int intId = Integer.parseInt(id);
		System.out.println("int id in delete: "+intId);
		dao.delete(intId);
		return intId;
	}

}
