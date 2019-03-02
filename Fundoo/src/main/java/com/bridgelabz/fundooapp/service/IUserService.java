package com.bridgelabz.fundooapp.service;

import java.util.List;

import com.bridgelabz.fundooapp.dto.TableUsersData;
import com.bridgelabz.fundooapp.dto.UserLogin;
import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserService {	
	
	/**This method is to create new user in database, it take request 
	 * from controller and send data to dao class to save user data in database
	 * @param user 
	 * @return
	 */
	public String create(Userdata user);

	public int read(UserLogin user);

	public String forgetPassword(String emailId);

	public List<TableUsersData> fetchAllUserData();

	public Userdata getUserInfo(int id);
}
