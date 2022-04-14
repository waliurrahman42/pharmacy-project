package com.medibox.admin.controller;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class adminOrderController {

	
	@RequestMapping("/OrderDetails")
	public String UserDetails(Model m){
		
		return "admin/OrderDetails";
	}
	
}
