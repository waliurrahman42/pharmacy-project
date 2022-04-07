package com.medibox.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.medibox.admin.model.Seller;
import com.medibox.admin.service.SellerService;

@Controller
public class SellerController {
	
	@Autowired
	private SellerService sellerService;
	
	
	@RequestMapping("/seller")
	public String Seller(Model m) {
		List<Seller> sellers=sellerService.listOfSeller();
		m.addAttribute("Sellerlist", sellers);
		System.out.println(sellers);
		return "seller";
	}
	
	@GetMapping("/sellerDetailsFind")
	public String sellerDetails(@RequestParam("sid")Integer sid,Model m) {
		m.addAttribute("currentuser", sellerService.findBySellerId(sid));
		return "sellerDetails";
	}
	
	@PostMapping("/sellerStatusupdate")
	public String sellerDetailsUpdate(Seller seller,Model m) {
		Seller    sellerDetails=sellerService.findBySellerId(seller.getSellerId());
				  seller.setPassword(sellerDetails.getPassword());
		sellerService.editSeller(seller);
		m.addAttribute("currentuser", sellerService.findBySellerId(seller.getSellerId()));
		return "sellerDetails";
	}
	
	
}
