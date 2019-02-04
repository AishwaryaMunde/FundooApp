package com.bridgelabz.fundooapp.dao;

public interface IUserDatabase
{
	public void fetch(String userName , String userPass);
	public void save(String firstName,String lastName,String mobileno,String emailid,String userName,String userPass);
}
