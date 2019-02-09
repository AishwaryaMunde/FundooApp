package com.bridgelabz.fundooapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

@RestController
public class UserController 
{
	@RequestMapping(value = "/create", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Fundoouserdata> addUser(@RequestBody Fundoouserdata user,  BindingResult bindingResult) {
		
		System.out.println(user.toString());
		return new ResponseEntity<Fundoouserdata>(user,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> readUser(@RequestParam String emailId , @RequestParam String password)
	{
		System.out.println(emailId+" "+password);
		return new ResponseEntity<String>(emailId,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> updateUser(@PathVariable String id)
	{
		System.out.println(id);
		return new ResponseEntity<String>(id,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> deleteUser(@PathVariable String id)
	{
		System.out.println(id);
		return new ResponseEntity<String>(id,HttpStatus.OK);
	}
}
