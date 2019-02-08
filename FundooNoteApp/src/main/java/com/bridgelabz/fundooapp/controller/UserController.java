package com.bridgelabz.fundooapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

@RestController
public class UserController 
{
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ResponseEntity<String > addUser(@RequestBody Fundoouserdata user,  BindingResult bindingResult) {
		
		System.out.println(user.toString());
		return new ResponseEntity<String>(HttpStatus.OK);
	}
}
