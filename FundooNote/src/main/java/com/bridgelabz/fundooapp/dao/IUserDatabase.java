package com.bridgelabz.fundooapp.dao;

import java.util.List;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public interface IUserDatabase 
{
	/**This method is used to fetch data of particular user from database 
	 * @param userName is user name entered input
	 * @param userPass is user password entered password
	 */
	public  String fetch(String userName , String userPass);
	
	/**This method save the data entered by user in databse 
	 * @param userData is object of Fundoouserdata pojo class
	 */
	public Fundoouserdata save(Fundoouserdata userData);
	
	/**This method fetch data of particular user where user name sent through 
	 * URL which is primary key in database  
	 * @param userName is user name sent through URL 
	 */
	public String fetchById(String userName);
	
	/**This method update the particular data in database using unique userName 
	 * @param userName is unique key to identify record in database 
	 * @param mobileno is field which you wants to update in database 
	 */
	public String update(String userName , String mobileno);
	
	/**This method delete the record from database 
	 * @param userName is unique userName to identify record in database
	 */
	public String delete(String userName);
}
