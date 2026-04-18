package com.SpringMVC.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringMVC.POJO.Admin;
import com.SpringMVC.Repository.AdminRepository;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository repository;
	
	
	
	
	public Admin addAdmin(String name, String email, String password) {
		Admin admin2=repository.addAdmin(name,email,password);
		return admin2;
	}




	public Admin check(String email, String password) {
		// TODO Auto-generated method stub
		return repository.check(email,password);
	}
	
}
