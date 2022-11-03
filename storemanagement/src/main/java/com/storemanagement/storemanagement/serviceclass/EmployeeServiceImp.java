package com.storemanagement.storemanagement.serviceclass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.storemanagement.storemanagement.model.Employee;
import com.storemanagement.storemanagement.repository.EmployeeRepository;
import com.storemanagement.storemanagement.serviceinterface.EmployeeServiceClass;

@Service
public class EmployeeServiceImp implements EmployeeServiceClass {

	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public List<Employee> viewEmployee() {
		return employeeRepository.findAll();
	}

	@Override
	public void insertEmployee(Employee employee) {
		this.employeeRepository.save(employee);

	}

	@Override
	public void deleteEmployee(int employeeid) {
		employeeRepository.deleteById(employeeid);

	}

	@Override
	public Employee editPage(int employeeid) {
		return employeeRepository.findById(employeeid).get();
	}

}
