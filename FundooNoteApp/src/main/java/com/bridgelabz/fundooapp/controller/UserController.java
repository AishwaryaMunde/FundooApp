package com.bridgelabz.fundooapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.bridgelabz.fundooapp.service.IUserService;
import com.bridgelabz.fundooapp.service.UserServiceImpl;

@RestController
public class UserController 
{
	@Autowired
	IUserService service;
	/**This method process the data coming from server to service 
	 * @param user is reference variable of model class ie Fundoouserdata 
	 * @param bindingResult is an interface 
	 * @return model class object
	 */
	@RequestMapping(value = "/create", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Fundoouserdata> addUser(@RequestBody Fundoouserdata user,  BindingResult bindingResult) {		
		System.out.println(user.toString());
//		service.addUser(user);
		return new ResponseEntity<Fundoouserdata>(user,HttpStatus.OK);
	}
	
	/**This method used to take parameters that is email id and password at the time of login verification
	 * @param emailId is user entered input for login
	 * @param password is user input to verify user
	 * @return email id of that user
	 */
	@RequestMapping(value = "/read", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> readUser(@RequestParam String emailId , @RequestParam String password)
	{
		System.out.println(emailId+" "+password);
		//service.readUser(emailId, password);
		return new ResponseEntity<String>(emailId,HttpStatus.OK);
	}
	
	/**This method take unique id to update user data and sent to service implementation 
	 * for further process 
	 * @param id is unique id number sent through URL
	 * @return id of user
	 */
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> updateUser(@PathVariable String id)
	{
		System.out.println(id);
		service.updateUser(id);
		return new ResponseEntity<String>(id,HttpStatus.OK);
	}
	
	/**This method is to take request to delete particular user with id=?
	 * & send request to service class for further process 
	 * @param id is unique number assign to that particular user
	 * @return id 
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> deleteUser(@PathVariable String id)
	{
		System.out.println(id);
		service.deleteUser(id);		
		return new ResponseEntity<String>(id,HttpStatus.OK);
	}
}
