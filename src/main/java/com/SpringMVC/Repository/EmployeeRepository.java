package com.SpringMVC.Repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.SpringMVC.POJO.Employee;

@Repository
public class EmployeeRepository {

    @PersistenceContext
    private EntityManager manager;

    @Transactional
    public void save(Employee emp) {
        manager.persist(emp);
    }

    public Employee findById(int id) {
        return manager.find(Employee.class, id);
    }
    @Transactional
    public void deleteById(int id) {
    	Employee emp= manager.find(Employee.class, id);
    	if(emp!=null) {
    		manager.remove(emp);
    	}
    }

	public List<Employee> findAll() {
		// TODO Auto-generated method stub
		return manager.createQuery("from Employee", Employee.class).getResultList();
	}
	
	@Transactional
	public void update(Employee emp) {
		manager.merge(emp);
	}
	
}