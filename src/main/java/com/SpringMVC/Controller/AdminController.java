package com.SpringMVC.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SpringMVC.POJO.Admin;
import com.SpringMVC.Service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
	@GetMapping ("/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(@RequestParam("name")String name,
						 @RequestParam("email")String email,
						 @RequestParam("password")String password){
	
		Admin admin=service.addAdmin(name,email,password );
		if(admin!=null) {
			return "login";
		}
		return "signup";
	}
		
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String loginPage1( @RequestParam("email")String email,
							  @RequestParam("password")String password,
							  HttpSession session) {
			Admin admin=service.check(email,password);
				
		if(admin!=null) {
			session.setAttribute("login", admin);
			session.setMaxInactiveInterval(30);
			return "Home";
		}
		
		return "login";
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	
	
	
}
