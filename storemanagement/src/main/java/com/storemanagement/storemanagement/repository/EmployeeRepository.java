package com.storemanagement.storemanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.storemanagement.storemanagement.model.User;

public interface EmployeeRepository extends JpaRepository<User, Integer>{
	

}
