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
	
	public String createUser(Userdata user) {
		System.out.println("in dao "+user);
		System.out.println(factory);
		session.save(user);
    	System.out.println("Registered Suceessfully");
    	transaction.commit();
    	session.close();
    	factory.close();
    	return "created";
	}

	public int readUser(String userName, String password) {
		int id = 0;
		Query query = session.createQuery("select id from Userdata where Username=:userName and Password=:password and Role=:admin");
    	query.setParameter("userName",userName);
    	query.setParameter("password",password);
    	query.setParameter("admin", "Admin");
    	List<Integer> obj = (List<Integer>)query.list();
    	for(Integer array : obj) {
    		System.out.println("query list : "+array);
    		id = array;
    		System.out.println(id);
    	}
    	
    	transaction.commit();
    	session.close();
    	factory.close();
		return id;
	}

	public String getPassword(String emailId) {
		System.out.println("in dao : "+emailId);
		Query query = session.createQuery("select password from Userdata where Email_Id=:emailId");
		query.setParameter("emailId",emailId);
		String user = (String)query.uniqueResult();
		System.out.println(user);
    	transaction.commit();
    	session.close();
    	factory.close();
		return user;				
	}

	public List fetchAllUsers() {
		Query query = session.createQuery("from Userdata");
    	List<Userdata> list = query.list();      //used when more one record is going to print
    	for(Userdata user : list)
    	{
    		System.out.println(user);          //this loop is used to print multiple records
    	}
    	transaction.commit();
		return list;
	}
}
