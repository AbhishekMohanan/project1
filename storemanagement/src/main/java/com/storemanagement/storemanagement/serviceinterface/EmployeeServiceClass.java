package com.storemanagement.storemanagement.serviceinterface;

import java.util.List;

import com.storemanagement.storemanagement.model.Employee;

public interface EmployeeServiceClass {
	List<Employee> viewEmployee();

	void insertEmployee(Employee employee);

	void deleteEmployee(int employeeid);

	Employee editPage(int employeeid);
	
	

}
