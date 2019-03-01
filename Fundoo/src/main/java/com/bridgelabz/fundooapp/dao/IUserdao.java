package com.bridgelabz.fundooapp.dao;

import java.util.List;

import com.bridgelabz.fundooapp.dto.TableUsersData;
import com.bridgelabz.fundooapp.model.Userdata;

public interface IUserdao {
	/**This method store new record of user in database 
	 * @param user is object which is to be stored in database which has all 
	 * data related to new user
	 * @return new user data which is stored in database
	 */
	public String createUser(Userdata user);
	/**This method check the record with particular email id and password
	 * if its is exist , this method return boolean value 
	 * @param emailId is email id which is to be check in database
	 * @param password is user password of same user 
	 * @return
	 */
	public int readUser(String emailId, String password);
	public String getPassword(String emailId);
	public List fetchAllUsers();
	public Userdata getUser(int id);
}
