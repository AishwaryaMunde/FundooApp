package com.bridgelabz.fundooapp.controller;

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
	public Fundoouserdata loginVerify(@RequestParam String userName, @RequestParam String userPass)
	{	
		System.out.println("Controller called");
		Fundoouserdata details= new Fundoouserdata();
		UserDatabaseImpl data = new UserDatabaseImpl();		
		System.out.println(userName+" "+userPass);
		data.fetch(userName,userPass);		
		return details;
	}
	@RequestMapping(value="/register" , method=RequestMethod.POST)
	public Fundoouserdata saveData(@RequestParam String firstName, @RequestParam String lastName,@RequestParam String mobileno, 
			@RequestParam String emailid,@RequestParam String userName, @RequestParam String userPass)
	{
		Fundoouserdata details= new Fundoouserdata();
		UserDatabaseImpl data = new UserDatabaseImpl();		
		String encryptPassword = utility.encryption(userPass);
		System.out.println("Encrypted Password "+encryptPassword);
		data.save(firstName,lastName,mobileno,emailid,userName,encryptPassword);
		return details;
	}
}