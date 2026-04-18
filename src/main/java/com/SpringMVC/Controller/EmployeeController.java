package com.SpringMVC.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.SpringMVC.POJO.Admin;
import com.SpringMVC.POJO.Employee;
import com.SpringMVC.Service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;  
    @GetMapping("/home")
    public String home(@SessionAttribute(name="login",required = false)Admin admin) {
    	if(admin!=null) {
    		return "Home";
    	}
    	
    	return "login";
    }
    @GetMapping("/add")
    public String add(@SessionAttribute(name="login",required = false)Admin admin) {
    	if (admin!=null) {
            return "Add";

		}
    	return "login";
    }

    @PostMapping("/saveEmployee")   
    public String addEmployee(Employee emp) {
        service.addEmployee(emp);
        return "Home";
    }

    @GetMapping("/search")
    public String search(@SessionAttribute(name="login",required = false)Admin admin) {
        if(admin!=null) {
    	return "search";
    
        }
        
        return "login";
    }
    @PostMapping("/search")
    public String searchEmployee(@RequestParam("id") int id, ModelMap map) {

        Employee emp = service.searchEmployee(id);  // ✅ FIXED

        if (emp != null) {
            map.addAttribute("msg", "Record Found");
            map.addAttribute("emp", emp);
        } else {
            map.addAttribute("msg", "Record Not Found");
        }

        return "search";
    }
    
    @GetMapping("/delete")
    public String deletePage(ModelMap map,@SessionAttribute(name="login",required = false)Admin admin) {
    	List<Employee> list= service.getAllEmployees();
    	map.addAttribute("list",list);
    	
    	if (admin!=null) {
        	return "delete";

		}
    	return "login";
    }
    
    @PostMapping("/delete")
    public String deleteEmployee(@RequestParam ("id") int id, ModelMap map) {
    	Employee emp=service.searchEmployee(id);
    	
    	if(emp!=null) {
    		service.deleteEmployee(id);
    		map.addAttribute("msg","Employee deleted Successfully");
    	}else {
    		map.addAttribute("msg", "Employee not Found");
    	}
    	
    	List<Employee> list=service.getAllEmployees();
    	map.addAttribute("list",list);
    	
    	return "delete";
    }
    
    @GetMapping("/update")
    public String updatePage(@SessionAttribute(name="login",required = false)Admin admin) {
    	if (admin!=null) {
        	return "update";

		}
    	return "login";
    }
    
    @PostMapping("/fetchEmployee")
    public String fetchEmployee(@RequestParam("id") int id, ModelMap map) {
    	Employee emp=service.searchEmployee(id);
    	
    	if(emp!=null) {
    		map.addAttribute("emp",emp);
    	}else {
    		map.addAttribute("mag","Employee NOt Found");
    	}
    	
    	return "/update";
    }
    
    @PostMapping("/updateEmployee")
    public String updateEmployee(Employee emp, ModelMap map) {
    	service.updateEmployee(emp);
    	map.addAttribute("mag","Employee Updated Successfully");
        map.addAttribute("emp", emp);    

    	return "/update";
    }
    
    
    
}