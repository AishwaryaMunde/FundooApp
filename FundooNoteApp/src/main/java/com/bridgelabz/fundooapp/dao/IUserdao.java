package com.bridgelabz.fundooapp.dao;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public interface IUserdao {
	
	/**This method store new record of user in database 
	 * @param user is object which is to be stored in database which has all 
	 * data related to new user
	 * @return new user data which is stored in database
	 */
	public Fundoouserdata create(Fundoouserdata user);
	
	/**This method check the record with particular email id and password
	 * if its is exist , this method return boolean value 
	 * @param emailId is email id which is to be check in database
	 * @param password is user password of same user 
	 * @return
	 */
	public boolean read(String emailId , String password);
	
	/**This method is to update user record who's unique id is entered 
	 * @param id is user input who's record wants to update
	 * @return id who's record is updated
	 */
	public int update(int id);
	
	/**This method is to delete user record who's id is entered
	 * @param id is id of user who's record is going to be delete
	 * @return id of user who's record is deleted from database
	 */
	public int delete(int id);
}
