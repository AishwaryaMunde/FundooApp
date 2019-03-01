package com.bridgelabz.fundooapp.controller;

import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.bridgelabz.fundooapp.model.Response;
import com.bridgelabz.fundooapp.dto.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;
import com.bridgelabz.fundooapp.service.IUserService;

@RestController
public class UserController {
	
	@Autowired
	IUserService service;
	
	/**This method process the data coming from server to service 
	 * @param user is reference variable of model class ie Fundoouserdata 
	 * @param bindingResult is an interface 
	 * @return model class object
	 */
	@RequestMapping(value="/create",method=RequestMethod.POST,
			produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> create(@RequestBody Userdata user)
	{
		System.out.println("in controller "+user.toString());
		String status = service.create(user);
		return new ResponseEntity<String>(status,HttpStatus.OK);
	}
	/**This method used to take parameters that is email id and password at the time of login verification
	 * @param emailId is user entered input for login
	 * @param password is user input to verify user
	 * @return email id of that user
	 */
	@PostMapping("/verifyUser")
	public ResponseEntity<Response> read(@RequestBody UserLogin user)
	{
		int id = service.read(user);
		Response response = new Response();
		response.setStatus("done");
		response.setId(id);		
		return new ResponseEntity<Response>(response,HttpStatus.OK);
	}
	
	/**This method is to get the password from database 
	 * @param emailId is user input which is used to fetch the password
	 * @return email id which is user input
	 */
	@GetMapping("/getPassword")
	public ResponseEntity<?> getPassword(@RequestParam String emailId)
	{
		service.forgetPassword(emailId);
		return new ResponseEntity<String>(emailId,HttpStatus.OK);
	}
	
	/**This method is retrieve all user data stored in database
	 * @return user data list
	 */
	@GetMapping("/fetchUsers")
	public ResponseEntity<?> fetchUserList()
	{
		List list = service.fetchAllUserData();
		return new ResponseEntity<List>(list,HttpStatus.OK);
	}
	
	/**This method is to retrieve particular user data identified by unique id
	 * @param id is unique id through we can find particlar user data 
	 * @return 
	 */
	@RequestMapping(value="/retrieveUser/{id}",method=RequestMethod.GET)
	public ResponseEntity<Userdata> getUserInfo(@PathVariable int id)
	{
		System.out.println(id);
		Userdata userdata = service.getUserInfo(id);
		return new ResponseEntity<Userdata>(userdata,HttpStatus.OK);
	}
}
