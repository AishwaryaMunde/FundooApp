package com.bridgelabz.fundooapp.dao;

import java.io.File;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.stereotype.Repository;
import com.bridgelabz.fundooapp.model.Userdata;

@Repository
public class UserDaoImpl implements IUserdao {
	
	File file = new File("/home/admin1/Desktop/FundooApp/Fundoo/src/main/webapp/WEB-INF/hibernate.cfg.xml");
	Configuration config = new Configuration().configure(file).addAnnotatedClass(Userdata.class);
	ServiceRegistry registry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry(); 
	SessionFactory factory = config.buildSessionFactory(registry);
	Session session = factory.openSession(); //open session method give the obj of session
	Transaction transaction = session.beginTransaction();
	
	public Userdata createUser(Userdata user) {
		System.out.println("in dao "+user);
		System.out.println(factory);
		session.save(user);
    	System.out.println("Registered Suceessfully");
    	transaction.commit();
    	session.close();
    	factory.close();
    	return user;
	}

	public boolean readUser(String userName, String password) {
		boolean userFound=false;
		Query query = session.createQuery("from Userdata where Username=:userName and Password=:password and Role=:admin");
    	query.setParameter("userName",userName);
    	query.setParameter("password",password);
    	query.setParameter("admin", "Admin");
    	List list = query.list();
    	if(list != null && list.size()>0)
    	{
    		System.out.println(list);
    		userFound = true;
    	}
    	else
    		return userFound=false;
    	transaction.commit();
//    	session.close();
//    	factory.close();
		return userFound;
	}

	public String getPassword(String emailId) {
		System.out.println("in dao : "+emailId);
		Query query = session.createQuery("select password from Userdata where Email_Id=:emailId");
		query.setParameter("emailId",emailId);
		String user = (String)query.uniqueResult();
		System.out.println(user);
    	transaction.commit();
//    	session.close();
//    	factory.close();
		return user;				
	}
}
