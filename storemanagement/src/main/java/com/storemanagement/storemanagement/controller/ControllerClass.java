package com.storemanagement.storemanagement.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.storemanagement.storemanagement.model.Supplier;
import com.storemanagement.storemanagement.model.User;
import com.storemanagement.storemanagement.repository.UserRepository;
import com.storemanagement.storemanagement.serviceinterface.ServiceClass;

@Controller
public class ControllerClass {

	@Autowired
	private ServiceClass serviceClass;

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("errorMsg", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");

		return "LogIn";
	}

	@RequestMapping("/")
	public String dashboard(HttpServletRequest request, Authentication authentication) {
		HttpSession session = request.getSession();
		session.setAttribute("sess", authentication.getName());
		System.out.println(authentication.getName());
		Optional<User> bean = userRepository.findByUserName(authentication.getName());
		String rol = bean.get().getRoles();
		if (rol.equals("ROLE_ADMIN")) {
			return ("AdminDashboard");
		}

		return "Dashboard";
	}

	@RequestMapping("/Dashboard")
	public String dashboard() {
		return "Dashboard";
	}

	@RequestMapping("/HomePage")
	public String homepage() {
		return "HomePage";
	}

	@RequestMapping("/ViewSupplierDetails")
	public String viewPage(Model model) {
		List<Supplier> viewSupplier = serviceClass.viewSupplier();
		model.addAttribute("supplierdetails", viewSupplier);
		return "ViewSupplierDetails";
	}

	@RequestMapping("/SupplierAdd")
	public String insert(Model model) {
		model.addAttribute("supplierdetails", new Supplier());
		return "SupplierAdd";
	}

	@PostMapping("/added")
	public String inserted(@ModelAttribute("supplierdetails") Supplier supplier, Model model) {
		serviceClass.insertSupplier(supplier);
		List<Supplier> viewSupplier = serviceClass.viewSupplier();
		model.addAttribute("supplierdetails", viewSupplier);
		return "redirect:/ViewSupplierDetails";
	}

	@RequestMapping(value = "/delete/{supplier_id}", method = RequestMethod.GET)
	public String delete(@PathVariable("supplier_id") int id) {
		serviceClass.deleteSupplier(id);
		return "redirect:/ViewSupplierDetails";
	}

	@RequestMapping("/e/{supplier_id}")
	public String edit(@PathVariable("supplier_id") int supplier_id, Model model) {
		Supplier supplier = serviceClass.editSupplier(supplier_id);
		model.addAttribute("Editdetails", supplier);
		return "SupplierEditPage";
	}
//	@PostMapping("/updated")
//    public String update(@ModelAttribute("supplierdetails")Supplier supplier) {
//	serviceClass.update(supplier.getSupplierId(), supplier.getSupplierName(),supplier.getMobileNo());
//		return "redirect:/ViewSupplierDetails";	}

}
