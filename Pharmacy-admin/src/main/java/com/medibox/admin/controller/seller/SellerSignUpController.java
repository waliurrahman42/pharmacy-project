package com.medibox.admin.controller.seller;

import java.io.IOException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.*;

import com.medibox.admin.FileUploadUtils;
import com.medibox.admin.model.Seller;
import com.medibox.admin.service.SellerService;
import com.medibox.admin.service.implement.SellerServiceImplemention;



@Controller
public class SellerSignUpController {

	@Autowired
	private SellerService sellerService;
	
	@RequestMapping("/sellerSignUp")
	public String RegistrationForm() {
		//System.out.println("seller SignUp form");
		return "sellerSignUp";
	}
	
	
//	@PostMapping("/addSeller")
//	public String Registration(Seller s,Model m) {
//		sellerService.addSeller(s);
//		m.addAttribute("sellerReg",true);
//		System.out.println("seller Registration");
//		return "sellerSignUp";
//	}
	
	
	@PostMapping("/addSeller")
	public String Registration(Seller s,@RequestParam("myfilesdoc")MultipartFile multipartFile,Model m) throws IOException{
		
		if (s!=null) {
			System.out.println("seller Registration 2");
			String filename=StringUtils.cleanPath(multipartFile.getOriginalFilename());
			
			
			
			String uploadDir="src/main/resources/static/documents/seller";
			//String uploadDir ="src/main/webapp/images/seller";
			
			FileUploadUtils.saveFile(uploadDir, filename, multipartFile);
			s.setDocumentUrl("/documents/seller/"+filename);
			sellerService.addSeller(s);
			
		
			m.addAttribute("sellerReg",true);
			System.out.println("seller Registration");
			
		}
		return "sellerSignUp";
	}
}
