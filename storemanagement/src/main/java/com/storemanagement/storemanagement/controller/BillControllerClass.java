package com.storemanagement.storemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    
	@RequestMapping("/add")
	public ResponseEntity<String> productbill(@RequestParam("name") String name) {
		System.out.println("Product name :"+ name);
		return new ResponseEntity<String>("{\"status\" : \" OK\"}",HttpStatus.OK ); 
				
	}
}
