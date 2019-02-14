package com.bridgelabz.fundooapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
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
		service.create(user);
		return new ResponseEntity<Userdata>(user,HttpStatus.OK);
	}
}
