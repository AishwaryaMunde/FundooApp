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
	
	/* (non-Javadoc)
	 * @see com.bridgelabz.fundooapp.dao.IUserDatabase#fetch(java.lang.String, java.lang.String)
	 */
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

	public void save(Fundoouserdata userData) 
	{		
		if(utility.emailSend(userData.getEmailId()))
		{
			session.save(userData);
	    	System.out.println("Registered Suceessfully");
	    	transaction.commit();
	    	session.close();
	    	factory.close();	
		}		
	}
	
	public void update(String userName , String mobileno) 
	{
		Query query = session.createQuery("update Fundoouserdata set MobileNo=:mobileno where UserName= :userName");
		query.setParameter("mobileno", mobileno);
		query.setParameter("userName",userName);
		int count = query.executeUpdate();
		System.out.println(count+" records updated");
		transaction.commit();
	    session.close();
	    factory.close();
	}

	public void fetchById(String userName) 
	{
		Query query = session.createQuery("from Fundoouserdata where UserName= :uname");
		query.setParameter("uname",userName);
		List list = query.list();
	    if(list != null && list.size()>0)
	    {
	    	System.out.println(list);
	    }
	    transaction.commit();
	    session.close();
	    factory.close();
	}

	public void delete(String userName) 
	{
		Query query = session.createQuery("delete Fundoouserdata where UserName= :userName");
		query.setParameter("userName", userName);
		query.executeUpdate();
		transaction.commit();
	    session.close();
	    factory.close();				
	}
}
