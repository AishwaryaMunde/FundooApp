package com.bridgelabz.fundooapp.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import com.bridgelabz.fundooapp.model.Fundoouserdata;
import com.bridgelabz.fundooapp.utility.utility;

public class UserDatabaseImpl implements IUserDatabase
{
	Configuration config = new Configuration().configure().addAnnotatedClass(Fundoouserdata.class);
	ServiceRegistry registry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry(); 
	SessionFactory factory = config.buildSessionFactory(registry);
	Session session = factory.openSession(); //open session method give the obj of session
	Transaction transaction = session.beginTransaction();
	public void fetch(String userName , String userPass) 
	{		
		boolean userFound=false;		
	    Query query = session.createQuery("from Fundoouserdata where UserName= :uname and Password= :password");
	    query.setParameter("uname",userName);
	    query.setParameter("password",userPass);
	    List list = query.list();
	    if(list != null && list.size()>0)
	    {
	    	System.out.println(list);
	    	userFound = true;
	    }
	    transaction.commit();
	    session.close();
	    factory.close();
	}

	public void save(String firstName,String lastName,String mobileno,String emailid,String userName,String userPass) 
	{		
		if(utility.emailSend(emailid))
		{
			Fundoouserdata userData = new Fundoouserdata();
			userData.setFirstName(firstName);
			userData.setLastName(lastName);
			userData.setMobileNo(mobileno);
			userData.setEmailId(emailid);
			userData.setUserName(userName);
			userData.setPassword(userPass);
			session.save(userData);
	    	System.out.println("Registered Suceessfully");
	    	transaction.commit();
	    	session.close();
	    	factory.close();	
		}
		
	}
}
