package com.bridgelabz.fundooapp.dao;

import com.bridgelabz.fundooapp.model.Fundoouserdata;

public interface IUserdao {
	public Fundoouserdata create(Fundoouserdata user);
	public String read(String emailId , String password);
	public int update(int id);
	public int delete(int id);
}
