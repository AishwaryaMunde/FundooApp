package com.bridgelabz.fundooapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bridgelabz.fundooapp.model.Response;
import com.bridgelabz.fundooapp.model.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;
import com.bridgelabz.fundooapp.service.IUserService;

@RestController
public class UserController {
	
	@Autowired
	IUserService service;
	
	@RequestMapping(value="/create",method=RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> create(@RequestBody Userdata user)
	{
		System.out.println("in controller "+user.toString());
		String status = service.create(user);
		return new ResponseEntity<String>(status,HttpStatus.OK);
	}
	
	@PostMapping("/verifyUser")
	public ResponseEntity<?> read(@RequestBody UserLogin user)
	{
		System.out.println(user.getUserName()+" "+user.getUserPassword());
		int id = service.read(user);
		System.out.println("id is :"+id);
		return new ResponseEntity<Integer>(id,HttpStatus.OK);
	}
	
	@GetMapping("/getPassword")
	public ResponseEntity<?> getPassword(@RequestParam String emailId)
	{
		System.out.println("email id : "+emailId);
		service.forgetPassword(emailId);
		return new ResponseEntity<String>(emailId,HttpStatus.OK);
	}
	
	@GetMapping("/fetchUsers")
	public ResponseEntity<?> fetchUserList()
	{
		System.out.println("in controller");
		List list = service.fetchAllUserData();
		return new ResponseEntity<List>(list,HttpStatus.OK);
	}
	
	@RequestMapping(value="/retrieveUser")
	public ResponseEntity<?> getUserInfo()
	{
		Userdata userdata = service.getUserInfo();
		return new ResponseEntity<Userdata>(userdata,HttpStatus.OK);
	}
}
