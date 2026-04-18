package com.SpringMVC.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringMVC.POJO.Employee;
import com.SpringMVC.Repository.EmployeeRepository;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository repository;

    public void addEmployee(Employee emp) {
        repository.save(emp);
    }

    public Employee searchEmployee(int id) {
        return repository.findById(id);
    }
    
    public void deleteEmployee(int id) {
    	repository.deleteById(id);
    }

	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}
    
    public void updateEmployee(Employee emp) {
    	repository.update(emp);
    }
	
}