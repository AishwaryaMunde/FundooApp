package com.bridgelabz.fundooapp.service;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public interface IUserService {
	
	/**This method is to create new user in database, it take request 
	 * from controller and send data to dao class to save user data in database
	 * @param user is reference variable who has data related to new user 
	 * @return user data which is stored in database
	 */
	public Fundoouserdata addUser(Fundoouserdata user);
	
	/**This method take verify user to check whether entered user details are 
	 * existing or not
	 * @param emailId is particular user email id who's record wants to search  
	 * @param password is password related to that user email id
	 * @return email id if it exist in database
	 */
	public String readUser(String emailId , String password);
	
	/**This method is to update user record with id provided by user 
	 * @param id is unique id assign at the time of registration entered by user
	 * @return id of user 
	 */
	public int updateUser(String id);
	
	/**This method is to delete particular user record from database 
	 * @param id is id of user who's record you wants to delete 
	 * @return id of user who's record is deleted 
	 */
	public int deleteUser(String id);
}
