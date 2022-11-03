package com.storemanagement.storemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.storemanagement.storemanagement.model.Employee;
import com.storemanagement.storemanagement.model.Supplier;
import com.storemanagement.storemanagement.serviceinterface.EmployeeServiceClass;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeServiceClass employeeServiceClass;
	
	@RequestMapping("/employee")
	public String employe(Model model) {
		model.addAttribute("employeedetails", new Employee());
		return "/EmployeRegistration";		
	}
	
	@RequestMapping("/viewemployee")
	public String viewEmployee(Model model,Employee employee) {
		List<Employee> viewEmployee = employeeServiceClass.viewEmployee();
		model.addAttribute("employeedetails", viewEmployee);
		return "ViewEmployeeDetails";
	}
	
	@RequestMapping("/addemployee")
	public String addEmployee(Model model,Employee employee) {
		employeeServiceClass.insertEmployee(employee);
		List<Employee> viewEmployee = employeeServiceClass.viewEmployee();
		model.addAttribute("employeedetails", viewEmployee);
		return "redirect:/viewemployee";
	}
	
	@RequestMapping(value = "/empdelete/{employeeid}", method = RequestMethod.GET)
	public String delete(@PathVariable("employeeid") int id) {
		employeeServiceClass.deleteEmployee(id);
		return "redirect:/viewemployee";
	}

	
}