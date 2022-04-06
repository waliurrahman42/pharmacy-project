package com.medibox.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medibox.admin.model.User;
import com.medibox.admin.service.UserService;
import com.medibox.admin.service.implement.UserServiceImplemention;



@Controller
public class UserAdminController {
	
	@Autowired
	private UserService userService;
	
	
	
	
	@RequestMapping("/Users")
	public String Users(Model m) {
		List<User>	users=userService.listOfUser();
		//m.addAttribute("userfind", userSingnup.findByUserId(1));
		m.addAttribute("Userlist", users);
		System.out.println(users);
		return "Users";
	}
	
	
	@RequestMapping("/UserDetails")
	public String UserDetails(Model m) {
		List<User>	users=userService.listOfUser();
		
		m.addAttribute("Userlist", users);
		System.out.println(users);
		return "UserDetails";
	}

	@PostMapping("/UserDetails/{uid}")
	public String UserDetails(@PathVariable("uid")Integer uid,Model m) {
		m.addAttribute("currentuser", userService.findByUserId(uid));
		return "UserDetails";
	}
	
	
}
