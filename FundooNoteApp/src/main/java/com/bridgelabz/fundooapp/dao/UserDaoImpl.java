package com.bridgelabz.fundooapp.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bridgelabz.fundooapp.model.Fundoouserdata;

@Repository
public class UserDaoImpl implements IUserdao {
	
//	@Autowired
//	private SessionFactory sessionFactory;
//	@Autowired
//	Transaction tx;
//	Session session = sessionFactory.openSession();

	public Fundoouserdata create(Fundoouserdata user) {
//		System.out.println(user);
//		System.out.println(sessionFactory);
//		sessionFactory.getCurrentSession().save(user);
//		System.out.println("save successfully");
		return user;
	}

	public boolean read(String emailId, String password) {
		boolean userFound=false;		
//		Query query = session.createQuery("from Userdata where UserName=:uname and Password=:password");
//    	query.setParameter("uname",userName);
//    	query.setParameter("password",Password);
//    	List list = query.list();
//    	if(list != null && list.size()>0)
//    	{
//    		System.out.println(list);
//    		userFound = true;
//    	}
//    	transaction.commit();
//    	session.close();
//    	factory.close();
		return userFound;
	}

	public int update(int id) {
//		Query query = session.createQuery("update Userdata set Password=:password where Id=:id");
//		query.setParameter("id" : id);		
//		query.setParameter("emailid",email);
//		query.setParameter("password",password);
//		int count = query.executeUpdate();
//		System.out.println(count+" record updated");
//    	transaction.commit();
//    	session.close();
//    	factory.close();
		return id;
	}

	public int delete(int id) {
//		Query query = session.createQuery("delete from Userdata where Id=:id");
//		query.setParameter("id",id);
//		int result = query.executeUpdate();
//		System.out.println("Rows affected: " + result);
		return id;
	}
}
