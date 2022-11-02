package com.storemanagement.storemanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DashboardControllerClass {

	@RequestMapping("/Bill")
	public String billing() {
		return"Bill";
	}
	@RequestMapping("/daily")
	public String dailyReport() {
		return"DailyReport";
	}
	@RequestMapping("/emp")
	public String empReport() {
		return"EmployeeDetails";
	}
	@RequestMapping("/cust")
	public String custReport() {
		return"CustomerDetails";
	}
}
