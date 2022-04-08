package com.medibox.admin.controller.seller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medibox.admin.model.Seller;
import com.medibox.admin.service.SellerService;
import com.medibox.admin.service.implement.SellerServiceImplemention;

@Controller
public class SellerSignUp {

	@Autowired
	private SellerService sellerService;
	
	@RequestMapping("/sellerSignUp")
	public String RegistrationForm() {
		System.out.println("seller SignUp form");
		return "sellerSignUp";
	}
	
	
	@PostMapping("/addSeller")
	public String Registration(Seller s,Model m) {
		sellerService.addSeller(s);
		m.addAttribute("sellerReg",true);
		System.out.println("seller Registration");
		return "sellerSignUp";
	}
	
	
	
}
