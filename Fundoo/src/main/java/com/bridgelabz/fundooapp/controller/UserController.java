package com.bridgelabz.fundooapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		int id = service.read(user);
		return new ResponseEntity<Integer>(id,HttpStatus.OK);
	}
	
	@GetMapping("/getPassword")
	public ResponseEntity<?> getPassword(@RequestParam String emailId)
	{
		service.forgetPassword(emailId);
		return new ResponseEntity<String>(emailId,HttpStatus.OK);
	}
	
	@GetMapping("/fetchUsers")
	public ResponseEntity<?> fetchUserList()
	{
		List list = service.fetchAllUserData();
		return new ResponseEntity<List>(list,HttpStatus.OK);
	}
	
	@RequestMapping(value="/retrieveUser/{id}")
	public ResponseEntity<?> getUserInfo(@PathVariable int id)
	{
		Userdata userdata = service.getUserInfo(id);
		return new ResponseEntity<Userdata>(userdata,HttpStatus.OK);
	}
	
//	@RequestMapping("/logout")
//	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
//	{
//		HttpSession session = request.getSession();
//		session.removeAttribute("uname");
//		session.invalidate();
//		response.sendRedirect("login.jsp");
//	}
}
