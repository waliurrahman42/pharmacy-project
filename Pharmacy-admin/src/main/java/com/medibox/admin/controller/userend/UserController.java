package com.medibox.admin.controller.userend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medibox.admin.model.Seller;
import com.medibox.admin.model.User;

@Controller
public class UserController {

	
	
	@RequestMapping("/profile")
	public String profile(Model m,HttpServletRequest request){
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("logedInUser");
		if(user!=null) {
			return "users/UserProfile";
		}
		
		return  "redirect:/userloginpage";
	}
	
	
	
	
}
