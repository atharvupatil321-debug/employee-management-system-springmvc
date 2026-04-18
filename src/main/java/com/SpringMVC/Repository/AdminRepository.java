package com.SpringMVC.Repository;

import java.util.List;
import java.util.Queue;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.SpringMVC.POJO.Admin;

import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

@Repository
public class AdminRepository {

	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	public static void openConnection()
	{
		factory=Persistence.createEntityManagerFactory("hibernate");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
		
	}
	public static void closeConnection()
	{
		if(factory!=null)
		{
			factory.close();
		}
		
		if(manager!=null)
		{
			manager.close();
		}
		
		if(transaction.isActive())
		{
			transaction.rollback();
		}
	}
		public Admin addAdmin(String name, String email, String password) {
			openConnection();
			transaction.begin();
			Admin admin1=new Admin();
			admin1.setEmail(email);
			admin1.setName(name);
			admin1.setPassword(password);
			manager.persist(admin1);
			transaction.commit();
			closeConnection();
			
			return admin1;
		}
		public Admin check(String email, String password) {
			// TODO Auto-generated method stub
			openConnection();
			transaction.begin();
			
			String jpql="SELECT a FROM Admin a WHERE a.email = :email AND a.password = :password";
			Query query=manager.createQuery(jpql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			List<Admin> admins=query.getResultList();
			Admin admin=null;
			if(!admins.isEmpty()) {
				admin=admins.get(0);
				
			}
			
			transaction.commit();
			closeConnection();
			return admin;
		}
}
