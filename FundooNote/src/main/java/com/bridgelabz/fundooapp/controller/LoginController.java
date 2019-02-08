package com.bridgelabz.fundooapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bridgelabz.fundooapp.dao.UserDatabaseImpl;
import com.bridgelabz.fundooapp.model.Fundoouserdata;
import com.bridgelabz.fundooapp.model.Login;

@RestController
@RequestMapping("/user")
public class LoginController {	
	
	@RequestMapping(value="/verify",method = RequestMethod.POST)
	public ResponseEntity<Login> loginVerify(@RequestBody Login login){
		return new ResponseEntity<Login>(login, HttpStatus.OK);
	}
	
	@RequestMapping(value= "/register",produces=MediaType.APPLICATION_JSON_VALUE,consumes=MediaType.APPLICATION_JSON_VALUE, method=RequestMethod.POST)
	public ResponseEntity<?> registerUser(@RequestBody Fundoouserdata fundoouserdata){
		System.out.println(fundoouserdata);
		return new ResponseEntity<Fundoouserdata>(fundoouserdata,HttpStatus.OK);		
	}

	@RequestMapping(value = "/{username}", method = RequestMethod.GET,
			produces = MediaType.APPLICATION_JSON_VALUE,
			consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> fetchById(@PathVariable("username") String username) {		
		System.out.println(username);		
		UserDatabaseImpl userData = new UserDatabaseImpl();
		String userName = userData.fetchById(username);
		return new ResponseEntity<String>(userName, HttpStatus.OK);
	}	
}