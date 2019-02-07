package com.bridgeit.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.bridgeit.demo.model.User;

@RestController
@RequestMapping("/user")
public class UserController {

	@PostMapping
	public ResponseEntity<?> registerUser(@RequestBody User user){
		
		
		
		return new ResponseEntity<String>("User Registration Done ",HttpStatus.OK);
		
	}
	
}
