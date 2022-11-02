package com.storemanagement.storemanagement.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.storemanagement.storemanagement.model.Company;
import com.storemanagement.storemanagement.model.Supplier;
import com.storemanagement.storemanagement.serviceinterface.CompanyServiceClass;
import com.storemanagement.storemanagement.serviceinterface.ServiceClass;

@Controller
public class CompanyControllerClass {
	@Autowired
	CompanyServiceClass companyServiceClass;
	
	@Autowired
	private ServiceClass serviceClass;
	
	@RequestMapping("/ViewCompanyDetails")
	public String viewPage(Model model) {
	List<Company> viewComapny = companyServiceClass.viewCompany();
	model.addAttribute("companydetails", viewComapny);
	return "ViewCompanyDetails";
	}
	

	@RequestMapping("/CompanyAdd")
	public String insert(Model model) {
		List<Supplier> viewSupplier = serviceClass.viewSupplier();
		model.addAttribute("supplierdetails", viewSupplier);
		return "CompanyAdd";
	}
	
	@PostMapping("/companyadded")
	public String inserted(@ModelAttribute("companydetails")Company company, Model model) {
		companyServiceClass.insertComapny(company);
		List<Company> viewComapny = companyServiceClass.viewCompany();
		model.addAttribute("companydetails", viewComapny);
		return "redirect:/ViewCompanyDetails";
	}
	
	@RequestMapping("/cd/{companyId}")
	public String delete(@PathParam("companyId") Integer companyId, Model model) {
		companyServiceClass.deleteCompany(companyId);
		return "redirect:/ViewCompanyDetails";
	}
	
	@RequestMapping("/ce/{companyId}")
	public String edit(@PathParam("companyId") int companyId, Model model) {
		Company company = companyServiceClass.editCompany(companyId);
		model.addAttribute("Editdetails", company);
		return "CompanyEditPage";
		
	}

}
