package com.storemanagement.storemanagement.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.storemanagement.storemanagement.model.Category;
import com.storemanagement.storemanagement.model.Company;
import com.storemanagement.storemanagement.serviceinterface.CategoryServiceClass;
import com.storemanagement.storemanagement.serviceinterface.CompanyServiceClass;

@Controller
public class CategoryControllerClass {

	@Autowired
	CategoryServiceClass categoryServiceClass;
	@Autowired
	CompanyServiceClass companyServiceClass;
	

	@RequestMapping("/ViewCategoryDetails")
	public String viewpage(Model model) {
		List<Category> viewcCategory = categoryServiceClass.viewCategory();
		model.addAttribute("categorydetails", viewcCategory);
		return "ViewCategoryDetails";
	}
	
	@RequestMapping("/categoryadd")
	public String insert(Model model) {
		List<Category> viewCategory = categoryServiceClass.viewCategory();
		model.addAttribute("categorydetails", viewCategory);
		List<Company> viewComapny = companyServiceClass.viewCompany();
		model.addAttribute("companydetails", viewComapny);
		return "CategoryAdd";
	}

	@PostMapping("/categoryadded")
	public String inserted(@ModelAttribute("categorydetails") Category category, Model model) {
		categoryServiceClass.insertCategory(category);
		List<Category> viewCategory = categoryServiceClass.viewCategory();
		model.addAttribute("categorydetails", viewCategory);
		return "redirect:/ViewCategoryDetails";
	}
	
	@RequestMapping("/catd/{category_id}")
	public String delete(@PathVariable("category_id")int category_id, Model model) {
	categoryServiceClass.deleteCategory(category_id);
		return "redirect:/ViewCategoryDetails";
	}

	
	
	

}
