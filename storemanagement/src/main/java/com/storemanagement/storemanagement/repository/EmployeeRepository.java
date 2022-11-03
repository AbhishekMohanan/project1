package com.storemanagement.storemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.storemanagement.storemanagement.model.Employee;


public interface EmployeeRepository extends JpaRepository<Employee, Integer>{
	

}
