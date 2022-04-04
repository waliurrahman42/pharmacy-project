package com.medibox.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {


	@RequestMapping("/home")
	public String home() {
		System.out.println("home is excuted");
		return "index";
	}
	
	@RequestMapping("/index")
	public String index() {
		System.out.println("index is excuted");
		return "index";
	}
	
	

	
}
