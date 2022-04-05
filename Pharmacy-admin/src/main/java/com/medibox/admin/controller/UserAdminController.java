package com.medibox.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medibox.admin.model.UserSignup;
import com.medibox.admin.service.UserSignupService;



@Controller
public class UserAdminController {
	
	@Autowired
	private UserSignupService userSingnup;
	
	@RequestMapping("/Users")
	public String Users(Model m) {
		List<UserSignup>	users=userSingnup.listOfUser();
		//m.addAttribute("userfind", userSingnup.findByUserId(1));
		m.addAttribute("Userlist", users);
		System.out.println(users);
		return "Users";
	}
	
	
	@RequestMapping("/UserDetails")
	public String UserDetails(Model m) {
		List<UserSignup>	users=userSingnup.listOfUser();
		
		m.addAttribute("Userlist", users);
		System.out.println(users);
		return "UserDetails";
	}

	
	
}
