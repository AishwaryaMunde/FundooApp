package com.bridgelabz.fundooapp.dao;

import java.io.File;

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
		session.close();
		factory.close();		
		transaction.commit();
		return user;
	}
}
