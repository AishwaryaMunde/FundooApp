package com.bridgelabz.fundooapp.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.bridgelabz.fundooapp.dao.UserDatabaseImpl;
import com.bridgelabz.fundooapp.model.Fundoouserdata;
import com.bridgelabz.fundooapp.utility.utility;

@RestController
public class LoginController 
{
	@RequestMapping(value="/index", method=RequestMethod.POST)
	public UserDatabaseImpl loginVerify(@RequestParam String userName, @RequestParam String userPass)
	{	
		System.out.println("Controller called");
		Fundoouserdata details= new Fundoouserdata();
		UserDatabaseImpl data = new UserDatabaseImpl();	
		String encryptPassword = utility.encryption(userPass);
		System.out.println(userName+" "+userPass);
		data.fetch(userName,encryptPassword);		
		return data;
	}
	@RequestMapping(value="/register" , method=RequestMethod.POST)
	public Fundoouserdata saveData(@RequestParam String firstName, @RequestParam String lastName,@RequestParam String mobileno, 
			@RequestParam String emailid,@RequestParam String userName, @RequestParam String userPass)
	{
		Fundoouserdata userData= new Fundoouserdata();
		UserDatabaseImpl data = new UserDatabaseImpl();		
		String encryptPassword = utility.encryption(userPass);
		System.out.println("Encrypted Password "+encryptPassword);
		userData.setFirstName(firstName);
		userData.setLastName(lastName);
		userData.setMobileNo(mobileno);
		userData.setEmailId(emailid);
		userData.setUserName(userName);
		userData.setPassword(encryptPassword);
		data.save(userData);
		return userData;
	}
	@RequestMapping(value="/fetch/{userName}",method=RequestMethod.POST)
	public Fundoouserdata fetchById(@PathVariable String userName)
	{
		Fundoouserdata data = new Fundoouserdata();
		System.out.println("Id : "+userName);
		UserDatabaseImpl userData = new UserDatabaseImpl();
		userData.fetchById(userName);
		return data;		
	}
	@RequestMapping(value="/update/{userName}",method=RequestMethod.POST)
	public Fundoouserdata updateById(@PathVariable String userName , @RequestParam String mobileno)
	{
		Fundoouserdata data = new Fundoouserdata();
		UserDatabaseImpl userData = new UserDatabaseImpl();
		userData.update(userName, mobileno);
		System.out.println("Id : "+userName);
		System.out.println("no : "+mobileno);
		return data;
	}
	
	@RequestMapping(value="/delete/{userName}",method=RequestMethod.POST)
	public Fundoouserdata delete(@PathVariable String userName)
	{
		Fundoouserdata data = new Fundoouserdata();
		UserDatabaseImpl userData = new UserDatabaseImpl();
		userData.delete(userName);
		return data;
	}
}