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
import com.storemanagement.storemanagement.model.Product;
import com.storemanagement.storemanagement.serviceinterface.CategoryServiceClass;
import com.storemanagement.storemanagement.serviceinterface.CompanyServiceClass;
import com.storemanagement.storemanagement.serviceinterface.ProductServiceClass;

@Controller
public class ProductControllerClass {

	@Autowired
	ProductServiceClass productServiceClass;
	
	@Autowired
	CategoryServiceClass categoryServiceClass;
	
	@Autowired
	CompanyServiceClass companyServiceClass;
	
	@RequestMapping("/ViewProductDetails")
	public String productview(Model model) {
		List<Product> viewProduct = productServiceClass.viewProduct();
		model.addAttribute("productdetails", viewProduct);
		return "ViewProductDetails";
	}

	@RequestMapping("/ProductAdd")
	public String add(Model model) {
		model.addAttribute("productdetails", new Product());
		List<Category> viewCategory = categoryServiceClass.viewCategory();
		model.addAttribute("categorydetails", viewCategory);
		List<Company> viewComapny = companyServiceClass.viewCompany();
		model.addAttribute("companydetails", viewComapny);
		return "ProductAdd";
	}

	@PostMapping("/productadded")
	public String inserted(@ModelAttribute("productdetails") Product product, Model model) {
		productServiceClass.insertProduct(product);
		List<Product> viewProduct = productServiceClass.viewProduct();
		model.addAttribute("productdetails", viewProduct);
		return "redirect:/ViewProductDetails";
	}

	@RequestMapping("/pd/{product_id}")
	public String delete(@PathVariable("product_id")int product_id, Model model) {
		productServiceClass.deleteProduct(product_id);
		return "redirect:/ViewProductDetails";
		
	}
	
	@RequestMapping("/pe/{product_id}")
	public String editpage(@PathVariable("product_id")int product_id, Model model) {
		Product product = productServiceClass.editProduct(product_id);
		model.addAttribute("Editdetails", product);
		return "ProductEditPage";
	}
	
}