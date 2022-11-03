package com.storemanagement.storemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.storemanagement.storemanagement.model.BillDetails;
import com.storemanagement.storemanagement.model.Product;

import com.storemanagement.storemanagement.serviceinterface.ProductServiceClass;

@Controller
public class BillControllerClass {
	
	@Autowired
	ProductServiceClass productServiceClass;
	
	@RequestMapping("/bill")
	public String billpage(Model model) {
		model.addAttribute("billdetails", new BillDetails());
		List<Product> viewProducts = productServiceClass.viewProduct();
		model.addAttribute("productdetails", viewProducts);
		return "Bill";
	}

}
