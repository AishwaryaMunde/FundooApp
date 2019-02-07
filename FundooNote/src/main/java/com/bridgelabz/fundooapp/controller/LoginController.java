package com.bridgelabz.fundooapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.bridgelabz.fundooapp.dao.UserDatabaseImpl;
import com.bridgelabz.fundooapp.model.Fundoouserdata;
import com.bridgelabz.fundooapp.model.Login;
import com.bridgelabz.fundooapp.utility.utility;

@RestController
@RequestMapping("/user/")
public class LoginController {
	
	/*
	 * @RequestMapping(value="/verify",method = RequestMethod.POST, produces =
	 * MediaType.APPLICATION_JSON_VALUE, consumes=MediaType.APPLICATION_JSON_VALUE)
	 * public ResponseEntity<?> loginVerify(@RequestBody Login login) {
	 * System.out.println(login); return new ResponseEntity<Login>(login,
	 * HttpStatus.OK); }
	 */
	
	
	@RequestMapping(value="/verify",method = RequestMethod.POST)
	public ResponseEntity<?> loginVerify(@RequestBody Login login)
	{
		return new ResponseEntity<Login>(login, HttpStatus.OK);
	}
	
	@PostMapping(value= "/register",produces=MediaType.APPLICATION_JSON_VALUE,consumes=MediaType.APPLICATION_JSON_VALUE)
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